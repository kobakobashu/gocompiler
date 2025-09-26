package main

import (
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"strconv"
	"strings"
)

func emitExpr(expr ast.Expr) {
	switch e := expr.(type) {
	case *ast.ParenExpr:
		fmt.Printf("  # start %T\n", e)
		emitExpr(e.X)
		fmt.Printf("  # end %T\n", e)
	case *ast.BasicLit:
		fmt.Printf("  # start %T\n", e)
		fmt.Printf("  # kind=%s\n", e.Kind)
		if e.Kind.String() == "INT" {
			val := e.Value
			ival, _ := strconv.Atoi(val)
			fmt.Printf("  movq $%d, %%rax\n", ival)
			fmt.Printf("  pushq %%rax\n")
		} else if e.Kind.String() == "STRING" {
			splitted := strings.Split(e.Value, ":")
			fmt.Printf("  leaq %s, %%rax\n", splitted[0]) // str.ptr
			fmt.Printf("  pushq %%rax\n")
			fmt.Printf("  pushq $%s\n", splitted[1]) // str.len
		} else {
			panic("Unexpected literal kind:" + e.Kind.String())
		}
		fmt.Printf("  # end %T\n", e)
	case *ast.BinaryExpr:
		fmt.Printf("  # start %T\n", e)
		emitExpr(e.X) // left
		emitExpr(e.Y) // right
		if e.Op.String() == "+" {
			fmt.Printf("  popq %%rdi # right\n")
			fmt.Printf("  popq %%rax # left\n")
			fmt.Printf("  addq %%rdi, %%rax\n")
			fmt.Printf("  pushq %%rax\n")
		} else if e.Op.String() == "-" {
			fmt.Printf("  popq %%rdi # right\n")
			fmt.Printf("  popq %%rax # left\n")
			fmt.Printf("  subq %%rdi, %%rax\n")
			fmt.Printf("  pushq %%rax\n")
		} else if e.Op.String() == "*" {
			fmt.Printf("  popq %%rdi # right\n")
			fmt.Printf("  popq %%rax # left\n")
			fmt.Printf("  imulq %%rdi, %%rax\n")
			fmt.Printf("  pushq %%rax\n")
		} else {
			panic(fmt.Sprintf("Unexpected binary operator %s", e.Op))
		}
		fmt.Printf("  # end %T\n", e)
	case *ast.CallExpr:
		fmt.Printf("  # start %T\n", e)
		if len(e.Args) != 1 {
			panic("Only single-argument calls are supported")
		}
		// Evaluate the single argument; leaves result on stack (top)
		fmt.Printf("  # e.Args[0] type: %T\n", e.Args[0])
		// Resolve callee symbol
		switch fn := e.Fun.(type) {
		case *ast.Ident:
			if fn.Name == "print" {
				// builtin print
				emitExpr(e.Args[0]) // push ptr, push len
				symbol := fmt.Sprintf("runtime.printstring")
				fmt.Printf("  call %s\n", symbol)
				fmt.Printf("  addq $8, %%rsp\n")
			} else {
				panic("Unexpected fn.Name:" + fn.Name)
			}
		case *ast.SelectorExpr:
			if pkg, ok := fn.X.(*ast.Ident); ok {
				emitExpr(e.Args[0])
				symbol := pkg.Name + "." + fn.Sel.Name
				fmt.Printf("  callq %s\n", symbol)
			} else {
				panic(fmt.Sprintf("Unsupported selector base type %T", fn.X))
			}
		default:
			panic(fmt.Sprintf("Unexpected expr type %T", e.Fun))
		}
		fmt.Printf("  # end %T\n", e)
	default:
		panic(fmt.Sprintf("Unexpected expr type %T", expr))
	}
}

func emitFuncDecl(pkgPrefix string, funcDecl *ast.FuncDecl) {
	fmt.Printf(".text\n")
	fmt.Printf(".global %s.%s\n", pkgPrefix, funcDecl.Name)
	fmt.Printf("%s.%s:\n", pkgPrefix, funcDecl.Name)
	for _, stmt := range funcDecl.Body.List {
		switch stmt.(type) {
		case *ast.ExprStmt:
			expr := stmt.(*ast.ExprStmt).X
			emitExpr(expr)
		default:
			panic("Unexpected stmt type")
		}
	}
	fmt.Printf("  ret\n")
}

var stringLiterals []string
var stringIndex int

func walkExpr(expr ast.Expr) {
	switch e := expr.(type) {
	case *ast.CallExpr:
		for _, arg := range e.Args {
			walkExpr(arg)
		}
	case *ast.ParenExpr:
		walkExpr(e.X)
	case *ast.BasicLit:
		if e.Kind.String() == "INT" {
		} else if e.Kind.String() == "STRING" {
			rawStringLiteal := e.Value
			stringLiterals = append(stringLiterals, rawStringLiteal)
			e.Value = fmt.Sprintf(".S%d:%d", stringIndex, len(rawStringLiteal)-2-1) // \n is counted as 2 ?
			stringIndex++
		} else {
			panic("Unexpected literal kind:" + e.Kind.String())
		}
	case *ast.BinaryExpr:
		walkExpr(e.X) // left
		walkExpr(e.Y) // right
	default:
		panic(fmt.Sprintf("Unexpected expr type %T", expr))
	}
}

func semanticAnalyze(f *ast.File) {
	for _, decl := range f.Decls {
		switch decl.(type) {
		case *ast.GenDecl:
			continue
		case *ast.FuncDecl:
			funcDecl := decl.(*ast.FuncDecl)
			for _, stmt := range funcDecl.Body.List {
				switch stmt.(type) {
				case *ast.ExprStmt:
					expr := stmt.(*ast.ExprStmt).X
					walkExpr(expr)
				default:
					panic("Unexpected stmt type")
				}
			}
		default:
			panic("unexpected decl type")
		}
	}
}

func generateCode(f *ast.File) {
	fmt.Printf(".data\n")
	for i, sl := range stringLiterals {
		fmt.Printf(".S%d:\n", i)
		fmt.Printf("  .string %s\n", sl)
	}
	fmt.Printf("\n")

	for _, decl := range f.Decls {
		switch decl.(type) {
		case *ast.GenDecl:
			continue
		case *ast.FuncDecl:
			funcDecl := decl.(*ast.FuncDecl)
			fmt.Printf("# funcDecl %s\n", funcDecl.Name)
			emitFuncDecl("main", funcDecl)
		default:
			panic("unexpected decl type")
		}
	}
}

func main() {
	fset := &token.FileSet{}
	f, err := parser.ParseFile(fset, "./t/source.go", nil, 0)
	if err != nil {
		panic(err)
	}
	semanticAnalyze(f)
	generateCode(f)
}
