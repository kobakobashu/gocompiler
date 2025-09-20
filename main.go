package main

import (
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"strconv"
)

func emitExpr(expr ast.Expr) {
	switch e := expr.(type) {
	case *ast.ParenExpr:
		fmt.Printf("  # start %T\n", e)
		emitExpr(e.X)
		fmt.Printf("  # end %T\n", e)
	case *ast.BasicLit:
		fmt.Printf("  # start %T\n", e)
		val := e.Value
		ival, _ := strconv.Atoi(val)
		fmt.Printf("  movq $%d, %%rax\n", ival)
		fmt.Printf("  pushq %%rax\n")
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
		emitExpr(e.Args[0])
		// Resolve callee symbol
		switch fn := e.Fun.(type) {
		case *ast.Ident:
			fmt.Printf("  callq %s\n", fn.Name)
		case *ast.SelectorExpr:
			if pkg, ok := fn.X.(*ast.Ident); ok {
				symbol := pkg.Name + "." + fn.Sel.Name
				fmt.Printf("  callq %s\n", symbol)
			} else {
				panic(fmt.Sprintf("Unsupported selector base type %T", fn.X))
			}
		default:
			panic(fmt.Sprintf("Unsupported callee type %T", e.Fun))
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

func generateCode(f *ast.File) {
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
	generateCode(f)
}
