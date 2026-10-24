.model small
.stack 100h
.code
main proc
    mov cx,1
    Start_do:
    mov dx, cx
    add dx, 30h
    mov ah, 02h
    int 21h
    inc cx 
    cmp cx,6
    jl start_do
    mov ah, 4ch
    int 21h
main endp
end main   