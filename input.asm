data segment ;数据段
buf db 'please input a number:',0dh,0ah,'$' 
data ends
code segment ;代码段
main proc far
     assume cs:code,ds:data
start: 
       MOV AX,DATA
       MOV DS,AX 

       mov dx,offset buf ;设置dx
       mov ah,9h
       int 21h

       mov ah,01
       int 21h
       and al,0fh ;截下数字值

       mov dl,al
       mov ah,02h
       int 21h


       ;mov dl,'*'
       ;mov ah,02h
       ;int 21h

       mov ah,4ch
       int 21h
       ret
main endp
code ends
end main