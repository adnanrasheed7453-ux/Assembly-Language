.model small
.stack 100h
.code
main proc
    mov cx, 1
while_start:
    cmp cx, 9
    jge end_while
    mov dl, cl
    add dl, 30h
    mov ah, 02h
    int 21h
    inc cx
    jmp while_start
end_while:
    mov ah, 4ch
    int 21h
main endp
end main   