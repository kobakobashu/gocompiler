.text
.global main.main
main.main:
# start *ast.CallExpr
# start *ast.BinaryExpr
# start *ast.BinaryExpr
# start *ast.BasicLit
  movq $21, %rax
  pushq %rax
# end *ast.BasicLit
# start *ast.BasicLit
  movq $1, %rax
  pushq %rax
# end *ast.BasicLit
  popq %rdi # right
  popq %rax # left
  imulq %rdi, %rax
  pushq %rax
# end *ast.BinaryExpr
# start *ast.ParenExpr
# start *ast.BinaryExpr
# start *ast.BasicLit
  movq $7, %rax
  pushq %rax
# end *ast.BasicLit
# start *ast.BasicLit
  movq $3, %rax
  pushq %rax
# end *ast.BasicLit
  popq %rdi # right
  popq %rax # left
  imulq %rdi, %rax
  pushq %rax
# end *ast.BinaryExpr
# end *ast.ParenExpr
  popq %rdi # right
  popq %rax # left
  addq %rdi, %rax
  pushq %rax
# end *ast.BinaryExpr
  callq _os_exitt
# end *ast.CallExpr
  ret
