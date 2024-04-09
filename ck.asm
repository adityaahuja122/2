Assume ds:data, cs:code
Data segment
        msg1 db "muskan $"
        msg2 db 0ah, 'D10C $'
Data ends    	
Code segment
disp proc near
mov Ah,09h
int 21h
ret
disp endp
start:  mov  ax, data         ; Initialize DS
        mov  ds, ax           ; 
        lea  dx,msg1  ;
        call disp ;
        lea  dx,msg2 ;
        call disp ;
mov Ax,4C00H
int 21h
Int 03h
code ends
end start  
