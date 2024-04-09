Assume ds:data, cs:code
Data segment
    lst1 db 06h, 46h, 86h, 66h, 96h, 99h, 56h, 16h, 76h, 36h 
    lst2 db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    count db 0Ah
Data ends       
Code segment
start: mov   ax, data        
       mov   ds, ax  
       mov cl, count       
       lea  si, lst1 
       lea di, lst2
again: mov al, [si]  
       mov  [di],al   
       inc si  
       inc di     
loop again  
int 03h
code ends
end start      
