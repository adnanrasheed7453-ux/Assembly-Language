
.MODEL SMALL
.STACK 100H
.DATA
    LETTERS DB 5 DUP(?)
    MSG DB 'Enter 5 small letters: $'
    MSG2 DB 'Converted: $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    MOV CX, 5
    MOV SI, 0

INPUT:
    MOV AH, 01H
    INT 21H
    MOV LETTERS[SI], AL
    INC SI
    LOOP INPUT

    MOV DL, 0DH
    MOV AH, 02H
    INT 21H

    MOV DL, 0AH
    MOV AH, 02H
    INT 21H

    LEA DX, MSG2
    MOV AH, 09H
    INT 21H

    MOV CX, 5
    MOV SI, 0

CONVERT:
    MOV DL, LETTERS[SI]
    AND DL, 0DFH
    MOV AH, 02H
    INT 21H
    INC SI
    LOOP CONVERT

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
MAIN
