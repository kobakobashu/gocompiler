.data
.S0:
  .ascii "hello world\n"
.S0_end:
.S1:
  .ascii "to stderr\n"
.S1_end:

# funcDecl main
.text
.global main.main
main.main:
  # start *ast.CallExpr
  # e.Args[0] type: *ast.BasicLit
  # start *ast.BasicLit
  # kind=STRING
  leaq .S0(%rip), %rax
  pushq $.S0_end-.S0
  pushq %rax
  # end *ast.BasicLit
  callq runtime.printstring
  addq $16, %rsp
  # end *ast.CallExpr
  # start *ast.CallExpr
  # e.Args[0] type: *ast.BasicLit
  # start *ast.BasicLit
  # kind=STRING
  leaq .S1(%rip), %rax
  pushq $.S1_end-.S1
  pushq %rax
  # end *ast.BasicLit
  callq runtime.printstring
  addq $16, %rsp
  # end *ast.CallExpr
  # start *ast.CallExpr
  # e.Args[0] type: *ast.BinaryExpr
  # start *ast.BinaryExpr
  # start *ast.ParenExpr
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
  # end *ast.ParenExpr
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
  # end *ast.CallExpr
  ret
