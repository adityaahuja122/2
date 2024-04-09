Assume ds:data, cs:code
Data segment
 n1 db 06h,16h
 n2 dw 6346h, 9366h
 n3 dw 0
 n4 dw 0,0
Data ends
Code segment
start: mov ax, data    
       mov ds, ax
       mov al, n1
       mov bl, n1 +1
       mul bl 
       mov n3,ax
       mov ax, n2
       mov bx,n2+2
       mul bx 
       mov n4, ax
       mov n4+2, dx  
int 03
code ends
end start
