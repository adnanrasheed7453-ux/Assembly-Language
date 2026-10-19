.model small 
.stack 100h
.data
num1 db ?
num2 db ?
msg db "Enter digit",0dh, 0ah,"$"
msg1 db "First digit is greater$" 
msg2 db "Second digit is greater$" 
msg3 db "Both are equal$"
.code
main proc
    mov ax,@data
    mov ds,ax
    mov dx,offset msg
    mov ah,09h
    int 21h
    mov ah, 01h
    int 21h
    mov num1,al
    mov dx,offset msg   
    mov ah,09h 
    int 21h 
    mov ah, 01h
    int 21h
    mov num2,al  
    
    
    cmp num1,al
    jg greater
    jl lesser
    lea dx,msg3
    jmp ending
    
    
greater:
    lea dx,msg1 
    jmp ending
    
lesser:
    lea dx,msg2 
    jmp ending
    
    
ending:
    mov ah,09h
    int 21h   
    
    mov ah,4ch
    int 21h
main endp
end main
    
    
    


   
       