.MODEL SMALL
.STACK 100H

.DATA
    NUM DB 10110000B
    MSG DB 'Reversed binary: $'

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    ; Load number into AL
    MOV AL, NUM

    ; Initialize BL
    MOV BL, 0

    ; Reverse 8 bits
    MOV CX, 8

L1:
    SHR AL, 1
    RCL BL, 1
    LOOP L1

    ; Display message
    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    ; Display reversed number
    MOV CX, 8

L2:
    ROL BL, 1
    JC ONE

    MOV DL, '0'
    JMP DISPLAY

ONE:
    MOV DL, '1'

DISPLAY:
    MOV AH, 02H
    INT 21H

    LOOP L2

    ; Exit
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN