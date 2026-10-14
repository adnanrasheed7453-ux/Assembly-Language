# Assembly Language - Lab 01

**University:** Superior University
**Course:** Assembly Language
**Name:** [Your Name]
**Roll No:** [Your Roll No]

---

## Objective

To get familiar with the 8086 assembly language environment by installing the EMU8086 emulator and writing a simple program using the `MOV` instruction.

## Tasks

1. Install the EMU8086 emulator.
2. Open EMU8086 and capture a screenshot of the emulator screen.
3. Write the simplest program using the `MOV` instruction, run it, and capture a screenshot of the registers showing the result.

## Tools Used

- EMU8086 (8086 microprocessor emulator)

## Program

```asm
org 100h

MOV AX, 1234h
MOV BX, 5678h
MOV CL, 0Ah
MOV DX, AX

RET
```

## Explanation

| Instruction | Description |
|-------------|-------------|
| `org 100h` | Sets the starting address of the program to 100h (standard for COM programs). |
| `MOV AX, 1234h` | Loads the hexadecimal value 1234h into register AX. |
| `MOV BX, 5678h` | Loads the hexadecimal value 5678h into register
