.intel_syntax noprefix

.global _syscall
_syscall:
    mov r10, rcx
    syscall
    ret

#define c(x, n) \
.global x; \
x:; \
    mov rax,n; \
    jmp _syscall

.global exit
exit:
    mov eax, 60
    mov ebx, rcx
    syscall

c(write, 1)

.global _start
_start:
    xor rbp, rbp
    pop rdi
    mov rsi, rsp
    call main
    call exit