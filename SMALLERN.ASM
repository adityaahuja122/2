Assume cs:code, ds:data
Data segment
Array db 06H, 66H, 86H, 56H, 46H, 66H, 76H, 36H, 06H, 96H
Mini db 00H
Data ends
Code segment
Start:	mov ax, data
	mov ds,ax
	xor di,di
        mov al,99H
	mov cl, 0Ah
	lea bx, Array
up:	cmp al, [bx+di]
	jc skip
	mov al, [bx+di]
skip:	inc di
	dec cl
	jnz up
	mov Mini, al
	int 03h
Code ends
End Start
