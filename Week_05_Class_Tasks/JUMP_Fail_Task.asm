.model small 
.stack 100h
.data
   num db 40 
   msg1 db "pass$" 
   msg2 db "fail$"
.code
main proc
    mov ax,@data
    mov ds,ax
    cmp num,50
    
    jg greater
    lea dx,msg2
    jmp ending
   
greater:
      lea dx,msg1
ending:
      mov ah,09h
      int 21h
      mov ah,4ch 
      int 21h
main endp
end main

   
       