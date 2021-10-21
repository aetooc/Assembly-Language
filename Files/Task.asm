[org 0x01000] 

    ; initialize stuff 
    mov  ax, 0              
    mov  cx, 6               
    mov  bx, 6          

    outerloop:
        add  ax, bx

        sub  cx, 1          
        jnz  outerloop 
    

    mov  [result], ax

    mov  ax, 0x4c00
    int  0x21



result: dw 0

