
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV CX, 26
    MOV DL, 'a'

SMALL:
    MOV AH, 02H
    INT 21H
    INC DL
    LOOP SMALL

    MOV DL, 0DH
    MOV AH, 02H
    INT 21H

    MOV DL, 0AH
    MOV AH, 02H
    INT 21H

    MOV CX, 26
    MOV DL, 'a'

CAPITAL:
    AND DL, 0DFH
    MOV AH, 02H
    INT 21H
    INC DL
    LOOP CAPITAL

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
