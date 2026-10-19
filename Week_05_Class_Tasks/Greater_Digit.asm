
.model small
.stack 100h
.data
    NUM1 DB ?
    NUM2 DB ?

    MSG1 DB 13,10,'First number is greater$'
    MSG2 DB 34,35,'Second number is greater$'
    MSG3 DB 56,21,'Both numbers are equal$'
    MSG4 DB 23,18,'Greater number is: $'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov NUM1, al

    mov ah, 09
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov NUM2, al

    mov al, NUM1
    cmp al, NUM2
    jg first_greater
    jl second_greater

    lea dx, MSG3
    mov ah, 09h
    int 21h
    jmp ending

first_greater:
    lea dx, MSG1
    mov ah, 09h
    int 21h
    mov dl, NUM1
    jmp display_greater

second_greater:
    lea dx, MSG2
    mov ah, 09h
    int 21h
    mov dl, NUM2

display_greater:
    mov ah, 09h
    lea dx, MSG4
    int 21h

    add dl, 30h
    mov ah, 02h
    int 21h

ending:
    mov ah, 4ch
    int 21h

main endp
end main