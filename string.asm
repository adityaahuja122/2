Assume ds:data, cs:code
Data segment
        msg1 db "muskan"
        Count dw 06h
Data ends    	
Code segment
start:  mov  ax, data         ; Initialize DS
        mov  ds, ax           ; 
        mov  cx, count        ; Initialise counter
        lea  si,msg1          ;
again:  mov  dl, [si]         ;
        mov  Ah,02h           ;
        int  21h              ;
        inc  si
Loop again                    ;Repeat the loop until cx becomes 0
mov Ax,4C00H
int 21h
Int 03h
code ends
End start
