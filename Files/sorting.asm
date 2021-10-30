[org 0x0100]

jmp start       

data: dw   5, 4, 2, 3, 1


start: 
    mov  cx, 5                          

    outerloop: 
        mov  bx, 0    
        
        innerloop: 
            mov  ax, [data + bx]
            cmp  ax, [data + bx + 2]    

            jbe  noswap                 

                
                mov  dx, [data + bx + 2]
                mov  [data + bx + 2], ax    
                mov  [data + bx], dx

            noswap:
            add  bx, 2
            cmp  bx, 8
            jne  innerloop

        
        sub cx, 1 
        jnz outerloop 


    
    mov  ax, 0x4c00
    int  0x21
