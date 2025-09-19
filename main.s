# funcDecl main
.text
.global main.main
main.main:
# start *ast.CallExpr
# start *ast.BinaryExpr
# start *ast.ParenExpr
# start *ast.BinaryExpr
# start *ast.BasicLit
  movq $20, %rax
  pushq %rax
# end *ast.BasicLit
# start *ast.BasicLit
  movq $1, %rax
  pushq %rax
# end *ast.BasicLit
  popq %rdi # right
  popq %rax # left
  addq %rdi, %rax
  pushq %rax
# end *ast.BinaryExpr
# end *ast.ParenExpr
# start *ast.BasicLit
  movq $2, %rax
  pushq %rax
# end *ast.BasicLit
  popq %rdi # right
  popq %rax # left
  imulq %rdi, %rax
  pushq %rax
# end *ast.BinaryExpr
  callq os.Exit
# end *ast.CallExpr
  ret
