[org 0x0100]

; start of code 

mov  ax, 7FF0h              ; move the constant 5 into register ax 
add  al, 10h             

add  ah, 1             ; add value of bx into the value of ax 

add  ax, 2
sub al, -130           ; add constant 15 into the value of bx 


mov  ax, 0x4c00         ; exit .. 
int  0x21               ; .. is what the OS should do for me





; watch the listing carefully 
