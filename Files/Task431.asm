[org 0x0100]

jmp start

num1: dw 1, 2, 3, 4, 5
sum: dw 0

start:

    mov bx, 0
    mov cx, 5
    mov ax, 0

innerloop:
    add ax, [num1+bx]
    add bx, 2
    sub cx, 1
    jne innerloop
    
mov [sum], ax

mov ax, 0x4c00
int 0x21
