Assume ds:data, cs:code
Data segment
 num db 06h
Data ends
Code segment
start: mov ax, data    
       mov ds, ax
       mov al, num
       and al, 0fh
       mov bl,al 
       mov al, num
       mov cl, 4      
       ror al, cl   
       and al, 0fh    
       mov bh, al 
int 03
code ends
end start
