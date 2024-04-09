Assume ds:data, cs:code
Data segment
Num db 02
Data ends
Code segment
Start:  mov ax,data
        mov ds,ax
        mov al,Num
        rcr al, 1
        int 03
Code ends
End start

