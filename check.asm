Assume ds:data, cs:code
Data segment
Num db -6
Data ends
Code segment
Start:  mov ax,data
        mov ds,ax
        mov ah,Num
        rcl ah,1
        int 03
Code ends
End start
