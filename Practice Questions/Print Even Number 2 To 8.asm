.model small 
.stack 100h
.code
            
            
main proc 
    mov cx,5
    mov bl,2
    
    L1:
    mov dl,bl
    add dl,30h    
    mov ah,02h
    int 21h
    
     
    
     add  bl,2
    Loop L1
    
       mov ah,4ch
       int 21h
    
    
    
    
    main endp
end main
    
    