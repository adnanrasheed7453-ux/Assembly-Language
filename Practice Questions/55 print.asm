.model small
.stack 100h
.code

main proc

    mov cx,10
    mov bl,1
    mov al,0

L1:
    add al,bl
    inc bl
    loop L1

    mov ah,0
    mov bl,10
    div bl

    mov bh,ah

    add al,30h
    mov dl,al
    mov ah,02h
    int 21h

    mov dl,bh
    add dl,30h
    mov ah,02h
    int 21h

    mov ah,4ch
    int 21h

main endp
end main