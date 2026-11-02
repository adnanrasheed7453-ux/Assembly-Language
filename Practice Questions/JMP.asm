.MODEL SMALL
.STACK 100H

.DATA
MSG DB 'Hello Students$'

.CODE
MAIN PROC

MOV AX, @DATA
MOV DS, AX

JMP DISPLAY

MOV AH, 09H
LEA DX, MSG
INT 21H

DISPLAY:
MOV AH, 09H
lea dx,msg
int 21h

mov ah,4ch
int 21h

main endp 
end main