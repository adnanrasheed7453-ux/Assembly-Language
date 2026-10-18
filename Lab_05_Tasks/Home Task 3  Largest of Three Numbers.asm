.MODEL SMALL
.STACK 100H

.DATA
    PROMPT1 DB 'Enter first number: $'
    PROMPT2 DB 0DH,0AH,'Enter second number: $'
    PROMPT3 DB 0DH,0AH,'Enter third number: $'
    MSG DB 0DH,0AH,'Largest number is: $'

    NUM1 DB ?
    NUM2 DB ?
    NUM3 DB ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, PROMPT1
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV NUM1, AL

    LEA DX, PROMPT2
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV NUM2, AL

    LEA DX, PROMPT3
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV NUM3, AL

    MOV BL, NUM1
    CMP BL, NUM2
    JAE CHECK_THIRD
    MOV BL, NUM2

CHECK_THIRD:
    CMP BL, NUM3
    JAE SHOW_LARGEST
    MOV BL, NUM3

SHOW_LARGEST:
    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    MOV DL, BL
    ADD DL, '0'
    MOV AH, 02H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN