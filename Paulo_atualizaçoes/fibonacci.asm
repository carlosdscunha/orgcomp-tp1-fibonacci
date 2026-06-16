section .data
    N dq 10
    resultado dq 0

section .text
    global _start

_start:
    mov rcx, [N]

    cmp rcx, 0
    je caso_zero

    cmp rcx, 1
    je caso_um

    mov rax, 0
    mov rbx, 1
    sub rcx, 1

loop_fibonacci:
    mov rdx, rbx
    add rbx, rax
    mov rax, rdx
    loop loop_fibonacci

    mov [resultado], rbx
    jmp fim

caso_zero:
    mov qword [resultado], 0
    jmp fim

caso_um:
    mov qword [resultado], 1
    jmp fim

fim:
    mov rax, 60
    mov rdi, 0
    syscall
