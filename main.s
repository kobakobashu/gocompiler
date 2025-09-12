.text
.global main.main
main.main:
# start *ast.BinaryExpr
# start *ast.BasicLit
  movq $44, %rax
  pushq %rax
# end *ast.BasicLit
# start *ast.BasicLit
  movq $3, %rax
  pushq %rax
# end *ast.BasicLit
  popq %rdi # right
  popq %rax # left
  subq %rdi, %rax
  pushq %rax
# end *ast.BinaryExpr
  popq %rax
  pushq %rax
  callq _os_exit
  ret
