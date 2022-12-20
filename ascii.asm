data segment ;数据段
num1 dw 0011h
num2 dw 0026h
num3 dw ?
data ends
code segment ;代码段
main proc far
     assume cs:code,ds:data
start: 
       MOV AX,DATA
       MOV DS,AX 

       mov dx, 0000h
       mov dl,0000h
       mov cx,000fh ;15次
       mov ax,0000h

r:
       mov ah,02h
       push cx ;设置外循环计数
       mov cx,0010h ;16次

c:
       int 21h
       push dx
       mov dl,' '
       int  21h

       pop dx ;恢复dx的值
       inc dx ;不断使dl加1
       loop c
       ;完成内循环

       pop cx ;外循环计数
       push dx

       mov dl,02h
       int 21h
       mov dl,0ah ;换行符
       int 21h 

       pop dx ;恢复dx值

       loop r
       ;mov dl,'*'
       ;mov ah,02h
       ;int 21h

       mov ah,4ch
       int 21h
       ret
main endp
code ends
end main