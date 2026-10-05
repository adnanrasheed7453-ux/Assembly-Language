.model small  
.stack 100h
.data
    marks db 45
    pass_msg db "pass$" 
    Fail_msg db "Fail$"  
.code
main proc
    mov ax,@data
    mov ds,ax
    
   mov al, marks
   cmp al , 50  
   jge is_pass
   lea dx , fail_msg
   jnp show_msg 
is_pass:
  lea dx, pass_msg 
show_msg:
mov ah, 09h
int 21h
mov ah,4ch
int 21h
    
main endp
end main