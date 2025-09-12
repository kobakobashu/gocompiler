.text
.global main.main
main.main:
# start *ast.BinaryExpr
# start *ast.BasicLit
  movq $40, %rax
  pushq %rax
# end *ast.BasicLit
# start *ast.BasicLit
  movq $2, %rax
  pushq %rax
# end *ast.BasicLit
  popq %rax
  popq %rdi
  addq %rdi, %rax
  pushq %rax
# end *ast.BinaryExpr
  popq %rax
  pushq %rax
  callq _os_exit
  ret
