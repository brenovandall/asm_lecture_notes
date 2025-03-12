section .text
    global _start

_start:
    test rdi,rdi
    je   .L6
    push rbx
    mov  rbx,rdi
    and  ebx,1
    shr  rdi,1
    call _start
    add  rbx,rax
    pop  rbx
    ret
.L6:
    mov rax,60
    xor rdi,rdi
    syscall