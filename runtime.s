# runtime
.text
.global _start
_start:
  callq main.main

# Export _os_exit for linker visibility
.global _os_exit
_os_exit:
  movq 8(%rsp), %rdi # arg1
  movq $0x2000001, %rax
  syscall
# End of program