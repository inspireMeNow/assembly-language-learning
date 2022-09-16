data segment ;数据段
buff db 50
     db ?
     db 50 dup(?)
mess db 'try again',0dh,0ah,'$'
    ;string db 'Hello,World!$'
data ends
code segment ;代码段
main proc far
     assume cs:code,ds:data
start: 
       MOV AX,DATA
       MOV DS,AX   
       mov dx,offset buff
       mov ah,0ah
       int 21h

       mov dl,10
       mov ah,02
       int 21h

       mov bx,offset buff
       inc bx
       mov cl,[bx]
       mov ch,0
       inc bx

s0:    
       mov dl,[bx]
       mov ah,02
       int 21h
       inc bx
       loop s0
        mov ah,4ch
        int 21h
       ret
main endp
code ends
end main

