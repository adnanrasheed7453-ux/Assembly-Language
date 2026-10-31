.MODEL SMALL
.STACK 100H

.DATA
    MSG DB 'hello$'
    T1 DB 'Original : $'
    T2 DB 0DH, 0AH, 'Encrypted: $'
    T3 DB 0DH, 0AH, 'Decrypted: $'

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    ; Display Original
    LEA DX, T1
    MOV AH, 09H
    INT 21H

    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    ; Encryption
    MOV BX, OFFSET MSG
    MOV CX, 5

L1:
    MOV AL, [BX]
    XOR AL, 00000001B
    MOV [BX], AL
    INC BX
    LOOP L1

    ; Display Encrypted
    LEA DX, T2
    MOV AH, 09H
    INT 21H

    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    ; Decryption
    MOV BX, OFFSET MSG
    MOV CX, 5

L2:
    MOV AL, [BX]
    XOR AL, 00000001B
    MOV [BX], AL
    INC BX
    LOOP L2

    ; Display Decrypted
    LEA DX, T3
    MOV AH, 09H
    INT 21H

    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    ; Exit
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN