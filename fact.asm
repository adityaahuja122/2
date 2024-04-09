Assume ds:data, cs:code
Data segment
Num dw 06
Data ends
Code segment
Start:  mov ax,data
        mov ds,ax
        mov ax,0001h
        mov cx,Num
up:     mul cx
        dec cx
        jnz up
        int 03h
Code ends
End start
