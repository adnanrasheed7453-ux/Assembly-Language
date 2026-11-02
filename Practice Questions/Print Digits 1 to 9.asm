.model small 
.stack 100h
.code

main proc
    mov dl,00110000b
    mov cx,10
    mov bl,1
    
    L1:
    
    mov dl,bl  
    or dl,00110000b
    mov ah,2h
    int 21h
    
    
    inc bl
    loop L1
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    