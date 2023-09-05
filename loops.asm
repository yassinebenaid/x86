section .data
    reached db "reached !",0x0a
    trying db "trying ..",0x0a
    tlen equ $ - trying
    rlen equ $ - reached
    goal equ 10

section .text
    global _start

_start:
    mov rbx,0

  
.try:
    cmp rbx, goal
    je .exit

    mov rax, 1
    mov rdi, 1
    mov rsi, trying
    mov rdx, tlen
    syscall
    
    jmp .increment

.increment:
    add rbx, 1
    jmp .try

.exit:
    mov rax, 1
    mov rdi, 1
    mov rsi, reached
    mov rdx, rlen 
    syscall

    mov rax, 60
    mov edi, 0
    syscall