; Definir os valores iniciais
section .data
    N           dq  5   ; Números da sequência
    resultado   dq  0   ; Resultar final

section .text
    global _start

_start:
    mov rax, 0          ; Registro A
    mov rbx, 1          ; Registro B
    mov rdx, 0          ; Registro Valor
    mov rcx, qword[N]   ; Registro números da sequência para Loop

loop_fibonacci:
    ; valor = A + B
    add rax, rbx        ; rax + rbx
    mov rdx, rax        ; atualizar valor

    mov rax, rbx        ; Atualizar rax (A = B)
    mov rbx, rdx        ; Atualizar valor (B = valor)

    loop loop_fibonacci     ; repetir ou rcx != 0 para terminar

    mov [resultado], rdx    ; Resultado = rdx final
    jmp fim

fim:
    mov rax, 60
    mov rdi, 0
    syscall