[org 0x0100]

jmp start

num1: dw 5
num2: dw 15
sum: dw 0

start:
    mov ax, [num1]
    mov bx, [num2]
    add ax, bx

    mov [sum], ax

    mov  ax, 0x4c00
    int  0x21