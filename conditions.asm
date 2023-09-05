section .data
    success db "we've reached our target",0x0a
    success_len equ $ - success
    
    failed db "we've missed the point :(",0x0a
    failed_len equ $ - failed
    
    value db 5

section .text
    global _start

_start:
   mov rax, 5
   cmp rax, value
   je .success
   jne .failed

.success:
    mov rax, 1
    mov rdi, 1
    mov rsi, success
    mov rdx, success_len
    syscall
 

.failed:
    mov rax, 1
    mov rdi, 1
    mov rsi, failed
    mov rdx, failed_len
    syscall 

.exit:
    mov rax, 60
    mov rdi , 0
    syscall