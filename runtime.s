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