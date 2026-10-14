# COAL Lab - Week 2

**University:** The Superior University Lahore
**Faculty:** Computer Science and Information Technology
**Section:** BSCS
**Subject:** COAL-Lab (Fall 2026)
**Instructor:** Muhammad Hamza
**Name:** [Your Name]
**Roll No:** [Your Roll No]

---

## Objective

To practice the 8086 `MOV`, `ADD` and `SUB` instructions by writing programs that swap values, add and subtract across multiple registers, and clear registers at the end.

## Tools Used

- EMU8086 (8086 microprocessor emulator)

---

## Question 1: Swapping using a temporary register

**Task:** Move 10 into AX and 20 into BX, then swap them using CX as a temporary register (MOV only). Keep CX = 0 at the end.

```asm
org 100h

MOV AX, 10     ; AX = 10
MOV BX, 20     ; BX = 20

MOV CX, AX     ; CX = 10
