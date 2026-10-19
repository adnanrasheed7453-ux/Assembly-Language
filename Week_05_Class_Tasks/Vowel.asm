
.MODEL SMALL
.STACK 100H

.DATA
    LETTER DB 'E'
    MSG1 DB 'Vowel$'
    MSG2 DB 'Consonant$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, LETTER

    CMP AL, 'A'
    JE VOWEL

    CMP AL, 'E'
    JE VOWEL

    CMP AL, 'I'
    JE VOWEL

    CMP AL, 'O'
    JE VOWEL

    CMP AL, 'U'
    JE VOWEL

    JMP CONSONANT

VOWEL:
    MOV DX, OFFSET MSG1
    MOV AH, 09H
    INT 21H
    JMP EXIT

CONSONANT:
    MOV DX, OFFSET MSG2
    MOV AH, 09H
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
