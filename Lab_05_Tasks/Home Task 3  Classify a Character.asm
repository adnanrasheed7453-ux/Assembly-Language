.MODEL SMALL
.STACK 100H

.DATA
    PROMPT DB 'Enter a character: $'
    NEWLINE DB 0DH,0AH,'$'

    DIGIT_MSG DB 'Digit$'
    UPPER_MSG DB 'Uppercase letter$'
    LOWER_MSG DB 'Lowercase letter$'
    OTHER_MSG DB 'Other symbol$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, PROMPT
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    MOV BL, AL

    LEA DX, NEWLINE
    MOV AH, 09H
    INT 21H

    CMP BL, '0'
    JB CHECK_UPPER
    CMP BL, '9'
    JBE IS_DIGIT

CHECK_UPPER:
    CMP BL, 'A'
    JB IS_OTHER
    CMP BL, 'Z'
    JBE IS_UPPER

    CMP BL, 'a'
    JB IS_OTHER
    CMP BL, 'z'
    JBE IS_LOWER

    JMP IS_OTHER

IS_DIGIT:
    LEA DX, DIGIT_MSG
    JMP DISPLAY_RESULT

IS_UPPER:
    LEA DX, UPPER_MSG
    JMP DISPLAY_RESULT

IS_LOWER:
    LEA DX, LOWER_MSG
    JMP DISPLAY_RESULT

IS_OTHER:
    LEA DX, OTHER_MSG

DISPLAY_RESULT:
    MOV AH, 09H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN