.model small
.stack 100h
.code

main proc
    mov bh,01000100b
    mov cx,8
    this_is_loop:
    shl bh,1
    jnc not_set  
    jc set
    
    not_set:
    mov dl,"0"
    mov ah,02h
    int 21h 
    jmp ending  
    
    
    set:
    mov dl,"1"
    mov ah,02h
    int 21h
    
    ending:
    loop this_is_loop
    mov ah,4ch
    int 21h
main endp
end main