# runtime
.text
.global _start
_start:
  callq main.main

# Export os.Exit for linker visibility
.global os.Exit
os.Exit:
  movq 8(%rsp), %rdi # arg1
  movq $0x2000001, %rax
  syscall
# End of program

# Export runtime.printstring for linker visibility
.global runtime.printstring
runtime.printstring:
  # 引数: 文字列のポインタ (8(%rsp))
  movq 8(%rsp), %rsi  # 文字列ポインタ
  movq 16(%rsp), %rdx # 文字列の長さ
  
  # write システムコール (stdout=1)
  movq $1, %rdi       # fd = stdout
  movq $0x2000004, %rax # write syscall on macOS
  syscall
  ret
