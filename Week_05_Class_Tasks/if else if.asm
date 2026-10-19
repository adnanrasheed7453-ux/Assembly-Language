
.MODEL SMALL
.STACK 100H

.DATA
    MARKS DB 72
    MSG1 DB 'Grade A$'
    MSG2 DB 'Grade B$'
    MSG3 DB 'Grade C$'
    MSG4 DB 'Grade F$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, MARKS

    CMP AL, 90
    JGE GRADE_A

    CMP AL, 80
    JGE GRADE_B

    CMP AL, 70
    JGE GRADE_C

    JMP GRADE_F

GRADE_A:
    MOV DX, OFFSET MSG1
    MOV AH, 09H
    INT 21H
    JMP EXIT

GRADE_B:
    MOV DX, OFFSET MSG2
    MOV AH, 09H
    INT 21H
    JMP EXIT

GRADE_C:
    MOV DX, OFFSET MSG3
    MOV AH, 09H
    INT 21H
    JMP EXIT

GRADE_F:
    MOV DX, OFFSET MSG4
    MOV AH, 09H
    INT 21H
    JMP EXIT

EXIT:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
