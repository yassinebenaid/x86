section .data
    greeting db "Hi mr. : "
    name db "yassinebenaid" ; my beautifull name

section .text
    global _start

_start:
    mov rax, 1          
    mov rdi, 1          
    mov rsi, greeting   
    mov rdx, 9
    syscall

    mov rax , 1
    mov rdi , 1
    mov esi , name
    mov rdx , 13
    syscall

    mov rax , 60
    mov rdi , 0 
    syscall