.text
.global main.main
main.main:
# *ast.BasicLit
  movq $42, %rax
  pushq %rax
  popq %rax
  pushq %rax
  callq _os_exit
  ret
