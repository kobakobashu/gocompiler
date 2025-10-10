.data
.S0:
  .string "hello world\n"
.S1:
  .string "to stderr\n"

# funcDecl main
.text
main.main:
  # funcall=*ast.Ident
  # start *ast.BasicLit
  # kind=STRING
  leaq .S0, %rax
  pushq %rax
  pushq $12
  # end *ast.BasicLit
  call runtime.printstring
  addq $8, %rsp
  # funcall=*ast.Ident
  # start *ast.BasicLit
  # kind=STRING
  leaq .S1, %rax
  pushq %rax
  pushq $10
  # end *ast.BasicLit
  call runtime.printstring
  addq $8, %rsp
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
  call os.Exit
  ret
