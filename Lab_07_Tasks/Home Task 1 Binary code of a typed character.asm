.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB 'Enter a character: $'
    MSG2 DB 0DH, 0AH, 'ASCII in binary: $'

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    ; Display message
    LEA DX, MSG1
    MOV AH, 09H
    INT 21H

    ; Read character
    MOV AH, 01H
    INT 21H

    ; Save character immediately
    MOV BL, AL

    ; Display second message
    LEA DX, MSG2
    MOV AH, 09H
    INT 21H

    ; Repeat 8 times
    MOV CX, 8

L1:
    ROL BL, 1
    JC ONE

    MOV DL, '0'
    JMP DISPLAY

ONE:
    MOV DL, '1'

DISPLAY:
    MOV AH, 02H
    INT 21H

    LOOP L1

    ; Exit program
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN