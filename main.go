package main

import (
	"fmt"
	"go/ast"
	"go/parser"
	"strconv"
)

func emitExpr(expr ast.Expr) {
	switch e := expr.(type) {
	case *ast.ParenExpr:
		fmt.Printf("# start %T\n", e)
		emitExpr(e.X)
		fmt.Printf("# end %T\n", e)
	case *ast.BasicLit:
		fmt.Printf("# start %T\n", e)
		val := e.Value
		ival, _ := strconv.Atoi(val)
		fmt.Printf("  movq $%d, %%rax\n", ival)
		fmt.Printf("  pushq %%rax\n")
		fmt.Printf("# end %T\n", e)
	case *ast.BinaryExpr:
		fmt.Printf("# start %T\n", e)
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
		fmt.Printf("# end %T\n", e)
	case *ast.CallExpr:
		fmt.Printf("# start %T\n", e)
		if len(e.Args) != 1 {
			panic("Only single-argument calls are supported")
		}
		// Evaluate the single argument; leaves result on stack (top)
		emitExpr(e.Args[0])
		// Resolve callee symbol
		switch fn := e.Fun.(type) {
		case *ast.Ident:
			fmt.Printf("  callq %s\n", fn.Name)
		default:
			panic(fmt.Sprintf("Unsupported callee type %T", e.Fun))
		}
		fmt.Printf("# end %T\n", e)
	default:
		panic(fmt.Sprintf("Unexpected expr type %T", expr))
	}
}

func main() {
	source := "_os_exit(21*1 + (7*3))"
	expr, err := parser.ParseExpr(source)
	if err != nil {
		panic(err)
	}
	fmt.Printf(".text\n")
	fmt.Printf(".global main.main\n")
	fmt.Printf("main.main:\n")
	emitExpr(expr)
	fmt.Printf("  ret\n")
}
