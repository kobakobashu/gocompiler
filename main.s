# Package  "./t"
# Name:    main
# Unresolved: []
# Package:   main
# valSpec.type=&ast.Ident{NamePos:44, Name:"string", Obj:(*ast.Object)(0x75f100)}
# spec.Name=globalstring, Value=&{53 STRING "hello stderr\n"}
# nameIdent.Obj=&{var globalstring 0xc0000c9310 0 <nil>}
# valSpec.type=&ast.Ident{NamePos:85, Name:"int", Obj:(*ast.Object)(0x75f160)}
# spec.Name=globalint, Value=&{91 INT 30}
# nameIdent.Obj=&{var globalint 0xc0000c9360 0 <nil>}
# valSpec.type=&ast.Ident{NamePos:109, Name:"int", Obj:(*ast.Object)(0x75f160)}
# spec.Name=globalint2, Value=&{115 INT 0}
# nameIdent.Obj=&{var globalint2 0xc0000c93b0 0 <nil>}
  # ident kind=type
  # ident kind=type
  # ident kind=type
.data
# string literals
.S0:
  .string "hello stderr\n"
# string literals
.S1:
  .string "hello string literal\n"
# string literals
.S2:
  .string "i am a local 1\n"
# string literals
.S3:
  .string "i m local2\n"
# string literals
.S4:
  .string "globalstring changed\n"
# Global Variables
  # ident kind=type
globalstring:  #
  .quad .S0
  .quad 13
  # ident kind=type
  # ident kind=type
globalint:  #
  .quad 30
  # ident kind=type
  # ident kind=type
globalint2:  #
  .quad 0
.text
# funcDecl main
main.main:
  pushq %rbp
  movq %rsp, %rbp
  subq $40, %rsp # local area
  # funcall=*ast.Ident
  # ident kind=var
  # Obj=&ast.Object{Kind:4, Name:"globalstring", Decl:(*ast.ValueSpec)(0xc0000c9310), Data:-1, Type:interface {}(nil)}
  # emitVariable
  # obj.Data=-1
  # ident kind=type
  # global
  movq globalstring+0(%rip), %rax
  movq globalstring+8(%rip), %rcx
  pushq %rax # ptr
  pushq %rcx # len
  callq runtime.printstring
  # funcall=*ast.Ident
  # start *ast.BasicLit
  # kind=STRING
  leaq .S1, %rax
  pushq %rax
  pushq $21
  # end *ast.BasicLit
  callq runtime.printstring
  # *ast.AssignStmt
  # ident kind=var
  # Obj=&{var localstring1 0xc0000c9400 16 <nil>}
  # emitVariable
  # obj.Data=16
  # ident kind=type
  # local
  leaq -16(%rbp), %rax # ptr localstring1 
  leaq -8(%rbp), %rcx # len localstring1 
  pushq %rax # ptr
  pushq %rcx # len
  # start *ast.BasicLit
  # kind=STRING
  leaq .S2, %rax
  pushq %rax
  pushq $15
  # end *ast.BasicLit
  # ident kind=var
  # ident kind=type
  popq %rcx # rhs len
  popq %rax # rhs ptr
  popq %rdx # lhs len addr
  popq %rsi # lhs ptr addr
  movq %rcx, (%rdx) # len to len
  movq %rax, (%rsi) # ptr to ptr
  # *ast.AssignStmt
  # ident kind=var
  # Obj=&{var localstring2 0xc0000c9450 32 <nil>}
  # emitVariable
  # obj.Data=32
  # ident kind=type
  # local
  leaq -32(%rbp), %rax # ptr localstring2 
  leaq -24(%rbp), %rcx # len localstring2 
  pushq %rax # ptr
  pushq %rcx # len
  # start *ast.BasicLit
  # kind=STRING
  leaq .S3, %rax
  pushq %rax
  pushq $11
  # end *ast.BasicLit
  # ident kind=var
  # ident kind=type
  popq %rcx # rhs len
  popq %rax # rhs ptr
  popq %rdx # lhs len addr
  popq %rsi # lhs ptr addr
  movq %rcx, (%rdx) # len to len
  movq %rax, (%rsi) # ptr to ptr
  # funcall=*ast.Ident
  # ident kind=var
  # Obj=&ast.Object{Kind:4, Name:"localstring1", Decl:(*ast.ValueSpec)(0xc0000c9400), Data:16, Type:interface {}(nil)}
  # emitVariable
  # obj.Data=16
  # ident kind=type
  # local
  movq -16(%rbp), %rax # ptr localstring1 
  movq -8(%rbp), %rcx # len localstring1 
  pushq %rax # ptr
  pushq %rcx # len
  callq runtime.printstring
  # funcall=*ast.Ident
  # ident kind=var
  # Obj=&ast.Object{Kind:4, Name:"localstring2", Decl:(*ast.ValueSpec)(0xc0000c9450), Data:32, Type:interface {}(nil)}
  # emitVariable
  # obj.Data=32
  # ident kind=type
  # local
  movq -32(%rbp), %rax # ptr localstring2 
  movq -24(%rbp), %rcx # len localstring2 
  pushq %rax # ptr
  pushq %rcx # len
  callq runtime.printstring
  # *ast.AssignStmt
  # ident kind=var
  # Obj=&{var globalstring 0xc0000c9310 -1 <nil>}
  # emitVariable
  # obj.Data=-1
  # ident kind=type
  # global
  leaq globalstring+0(%rip), %rax # ptr
  leaq globalstring+8(%rip), %rcx # len
  pushq %rax # ptr
  pushq %rcx # len
  # start *ast.BasicLit
  # kind=STRING
  leaq .S4, %rax
  pushq %rax
  pushq $21
  # end *ast.BasicLit
  # ident kind=var
  # ident kind=type
  popq %rcx # rhs len
  popq %rax # rhs ptr
  popq %rdx # lhs len addr
  popq %rsi # lhs ptr addr
  movq %rcx, (%rdx) # len to len
  movq %rax, (%rsi) # ptr to ptr
  # funcall=*ast.Ident
  # ident kind=var
  # Obj=&ast.Object{Kind:4, Name:"globalstring", Decl:(*ast.ValueSpec)(0xc0000c9310), Data:-1, Type:interface {}(nil)}
  # emitVariable
  # obj.Data=-1
  # ident kind=type
  # global
  movq globalstring+0(%rip), %rax
  movq globalstring+8(%rip), %rcx
  pushq %rax # ptr
  pushq %rcx # len
  callq runtime.printstring
  # *ast.AssignStmt
  # ident kind=var
  # Obj=&{var locali3 0xc0000c94a0 40 <nil>}
  # emitVariable
  # obj.Data=40
  # ident kind=type
  # ident kind=type
  # local
  leaq -40(%rbp), %rax # locali3 
  pushq %rax # int var
  # start *ast.BasicLit
  # kind=INT
  movq $10, %rax
  pushq %rax
  # end *ast.BasicLit
  # ident kind=var
  # ident kind=type
  popq %rdi # rhs evaluated
  popq %rax # lhs addr
  movq %rdi, (%rax)  # *ast.AssignStmt
  # ident kind=var
  # Obj=&{var globalint2 0xc0000c93b0 -1 <nil>}
  # emitVariable
  # obj.Data=-1
  # ident kind=type
  # ident kind=type
  # global
  leaq globalint2+0(%rip), %rax
  pushq %rax # int var
  # start *ast.BasicLit
  # kind=INT
  movq $2, %rax
  pushq %rax
  # end *ast.BasicLit
  # ident kind=var
  # ident kind=type
  popq %rdi # rhs evaluated
  popq %rax # lhs addr
  movq %rdi, (%rax)  # funcall=*ast.SelectorExpr
  # start *ast.BinaryExpr
  # start *ast.BinaryExpr
  # ident kind=var
  # Obj=&ast.Object{Kind:4, Name:"globalint", Decl:(*ast.ValueSpec)(0xc0000c9360), Data:-1, Type:interface {}(nil)}
  # emitVariable
  # obj.Data=-1
  # ident kind=type
  # ident kind=type
  # global
  movq globalint+0(%rip), %rax
  pushq %rax # int val
  # ident kind=var
  # Obj=&ast.Object{Kind:4, Name:"globalint2", Decl:(*ast.ValueSpec)(0xc0000c93b0), Data:-1, Type:interface {}(nil)}
  # emitVariable
  # obj.Data=-1
  # ident kind=type
  # ident kind=type
  # global
  movq globalint2+0(%rip), %rax
  pushq %rax # int val
  popq %rdi # right
  popq %rax # left
  addq %rdi, %rax
  pushq %rax
  # end *ast.BinaryExpr
  # ident kind=var
  # Obj=&ast.Object{Kind:4, Name:"locali3", Decl:(*ast.ValueSpec)(0xc0000c94a0), Data:40, Type:interface {}(nil)}
  # emitVariable
  # obj.Data=40
  # ident kind=type
  # ident kind=type
  # local
  movq -40(%rbp), %rax # locali3 
  pushq %rax # int val
  popq %rdi # right
  popq %rax # left
  addq %rdi, %rax
  pushq %rax
  # end *ast.BinaryExpr
  callq os.Exit
  leave
  ret
