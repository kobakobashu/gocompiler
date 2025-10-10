.data
.S0:
  .string "hello world\n"
.S1:
  .string "to stderr\n"

# funcDecl main
.text
main.main:
push %rbp
movq %rsp, %rbp
  # funcall=*ast.Ident
  # start *ast.BasicLit
  # kind=STRING
  leaq .S0, %rax
  pushq %rax
  pushq $12
  # end *ast.BasicLit
  callq runtime.printstring
  # funcall=*ast.Ident
  # start *ast.BasicLit
  # kind=STRING
  leaq .S1, %rax
  pushq %rax
  pushq $10
  # end *ast.BasicLit
  callq runtime.printstring
  # funcall=*ast.SelectorExpr
  # start *ast.BinaryExpr
  # start *ast.BinaryExpr
  # start *ast.BasicLit
  # kind=INT
  movq $20, %rax
  pushq %rax
  # end *ast.BasicLit
  # start *ast.BasicLit
  # kind=INT
  movq $1, %rax
  pushq %rax
  # end *ast.BasicLit
  popq %rdi # right
  popq %rax # left
  addq %rdi, %rax
  pushq %rax
  # end *ast.BinaryExpr
  # start *ast.BasicLit
  # kind=INT
  movq $2, %rax
  pushq %rax
  # end *ast.BasicLit
  popq %rdi # right
  popq %rax # left
  imulq %rdi, %rax
  pushq %rax
  # end *ast.BinaryExpr
  callq os.Exit
  leave
  ret
