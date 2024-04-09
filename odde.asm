Assume ds:data, cs:code
Data segment
Num db 06h, 66h, 67h, 76h, 86h, 96h, 66h, 46h, 56h, 90h
e dw 00h
o dw 00h
Data ends
Code segment
Start:  mov ax,data
        mov ds,ax
	xor di,di
	mov cl, 0Ah
	lea bx,Num
up:     mov al,[bx+di]
        rcr al, 1
        jc odd
        inc e
	jmp next
odd:    inc o
next:   inc di
	dec cl
	jnz up
        mov ax, e
        mov bx, o
        int 03
Code ends
End start
