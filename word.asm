Assume ds:data, cs:code 
Data segment
 msg db "namman $"
 msg1 db "By roll no -06 checking Word is a palindrome $"
 msg2 db " By roll no -06 checking  Word is Not a palindrome $"
 count dw 06h
Data ends
Code segment
disp proc near
mov Ah, 09h
int 21h
ret
disp endp
start: mov ax,data ;
       mov ds,ax ;
       mov cx,count ;
       lea si,msg ;
       lea di,msg ;
       add di,cx  ;
       dec di ;
again: mov al,[si] ;
       cmp al,[di] ;
       jnz np
       inc si
       dec di
Loop again
lea dx,msg1
call disp
jmp exit
np: lea dx,msg2
       call disp
exit: mov ax,4C00h
      int 21h
      int 03h
code ends
end start
