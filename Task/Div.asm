[org 0x0100]

jmp start
result: dw 0

start:
    xor ax, ax
    mov ax, 30
    mov bx, 2
    div bx      ; ax = ax / bx

    mov [result], ax

mov ax, 0x4c00
int 0x21
