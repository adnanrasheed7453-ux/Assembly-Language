
.MODEL SMALL
.STACK 100H

.DATA
    NUM DB -5
    MSG1 DB 'Positive$'
    MSG2 DB 'Negative$'
    MSG3 DB 'Zero$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, NUM

    CMP AL, 0
    JG POSITIVE
    JL NEGATIVE
    JE ZERO

POSITIVE:
    MOV DX, OFFSET MSG1
    MOV AH, 09H
    INT 21H
    JMP EXIT

NEGATIVE:
    MOV DX, OFFSET MSG2
    MOV AH, 09H
    INT 21H
    JMP EXIT

ZERO:
    MOV DX, OFFSET MSG3
    MOV AH, 09H
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
