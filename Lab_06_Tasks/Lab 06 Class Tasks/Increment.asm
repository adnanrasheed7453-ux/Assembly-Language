.model small
.stack 100h
.code
   main proc
    mov cx,5
    mov al,1
    add al,30h
    for_loop_starting:
    
    mov dl,al
    mov ah,02h
    int 21h
    inc al
    loop for_loop_starting ;(next step) jnz for_loop_starting
    
    mov ah,4ch 
    int 21h
main endp
   end main 