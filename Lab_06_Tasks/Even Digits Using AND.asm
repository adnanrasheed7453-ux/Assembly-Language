
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV CX, 10
    MOV BL, 9

CHECK:
    MOV DL, BL
    AND DL, 01H
    JNZ SKIP

    MOV DL, BL
    ADD DL, 30H
    MOV AH, 02H
    INT 21H

SKIP:
    DEC BL
    LOOP CHECK

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
