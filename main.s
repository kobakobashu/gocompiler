# Package  "./t"
# Name:    main
# Unresolved: []
# Package:   main
# valSpec.type=&ast.Ident{NamePos:37, Name:"int", Obj:(*ast.Object)(0x75d160)}
# valSpec.type=&ast.Ident{NamePos:59, Name:"string", Obj:(*ast.Object)(0x75d100)}
# spec.Name=myString, Value=&{68 STRING "to stderr\n"}
.data
# string literals
.S0:
  .string "to stderr\n"
# string literals
.S1:
  .string "hello world\n"
# string literals
.S2:
  .string "to stderr\n"
# Global Variables
myInt:  #
  .quad 40
myString:  #
  .quad .S0
  .quad 10
# funcDecl main
.text
main.main:
push %rbp
movq %rsp, %rbp
  # funcall=*ast.Ident
  # start *ast.BasicLit
  # kind=STRING
  leaq .S1, %rax
  pushq %rax
  pushq $12
  # end *ast.BasicLit
  callq runtime.printstring
  # funcall=*ast.Ident
  # start *ast.BasicLit
  # kind=STRING
  leaq .S2, %rax
  pushq %rax
  pushq $10
  # end *ast.BasicLit
  callq runtime.printstring
  # funcall=*ast.Ident
  # ident kind=var
  # Obj=&ast.Object{Kind:4, Name:"myString", Decl:(*ast.ValueSpec)(0xc0000593b0), Data:0, Type:interface {}(nil)}
  # emitVariable string ident.Decl.Type=&ast.Ident{NamePos:59, Name:"string", Obj:(*ast.Object)(0x75d100)}
  movq myString+0(%rip), %rax
  pushq %rax # ptr
  mov myString+8(%rip), %rax
  pushq %rax # len
  callq runtime.printstring
  # funcall=*ast.SelectorExpr
  # start *ast.BinaryExpr
  # ident kind=var
  # Obj=&ast.Object{Kind:4, Name:"myInt", Decl:(*ast.ValueSpec)(0xc000059360), Data:0, Type:interface {}(nil)}
  # emitVariable string ident.Decl.Type=&ast.Ident{NamePos:37, Name:"int", Obj:(*ast.Object)(0x75d160)}
  movq myInt+0(%rip), %rax
  pushq %rax # ptr
  # start *ast.BasicLit
  # kind=INT
  movq $2, %rax
  pushq %rax
  # end *ast.BasicLit
  popq %rdi # right
  popq %rax # left
  addq %rdi, %rax
  pushq %rax
  # end *ast.BinaryExpr
  callq os.Exit
  leave
  ret
