section .data
    EXIT_SUCCESSO   equ 0       ; codigo de sucesso
    SYS_exit        equ 60      ; codigo para SYS_exit terminar

    bA      db  0
    bB      db  1
    wValor  dw  0

section .text
    global _start
    global last

_start:
    mov al, byte[bA]
    mov bl, byte[bB]

    add bl, al
    mov dword[wValor], bl

last:
    mov rax, SYS_exit
    mov rdi, EXIT_SUCCESSO
    syscall