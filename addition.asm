Assume ds:data, cs:code
Data segment
 n1 db 06h, 96h
 n2 db 10H ,01H
 n3 db 0,0
Data ends
Code segment
start: mov ax, data   
       mov ds, ax
       mov al, n1
       mov bl, n2
       add al,bl
       daa
       mov n3,al
       mov al, n1+1
       mov bl, n2+1
       adc al,bl
       daa
       mov n3+1,al
int 03
code ends
end start
