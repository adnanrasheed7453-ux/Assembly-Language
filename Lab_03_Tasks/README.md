# Assembly Language Lab #03 – Arithmetic Instructions in 8086

## Overview
This repository contains five Assembly Language tasks completed as part of Lab #03 at Superior University. These tasks focus on arithmetic instructions and register manipulation using 8086 Assembly Language in EMU8086.

## Tasks Included

### Task 1: Multi-Step Register Transformation
- Initialize AX, BX, and CX registers with given values.
- Perform `ADD`, `INC`, `DEC`, `NEG`, and `SUB` operations.
- Reset all three registers to zero using the `SUB` instruction.

**Expected results before resetting registers:**
- AX = 11
- BX = FFFCh (-4)
- CX = FFFFh (-1)

### Task 2: Register Interaction and Repeated Operations
- Perform arithmetic operations on AX, BX, and CX.
- Use repeated increment and decrement instructions.
- Reset the registers to zero using `SUB`.

**Expected results before resetting registers:**
- AX = 5
- BX = 8
- CX = 2

### Task 3: Complex Chained Calculation
- Apply multiple arithmetic instructions in sequence.
- Practice register manipulation using `ADD`, `SUB`, `INC`, `DEC`, and `NEG`.

**Expected results before resetting registers:**
- AX = 12
- BX = 5
- CX = 2

### Task 4: Subtraction of Two Variables
- Declare two byte variables, `NUM1 DB 9` and `NUM2 DB 3`.
- Load `NUM1` into the AL register.
- Subtract `NUM2` from AL using the `SUB` instruction.

**Expected result:** AL = 6

### Task 5: Addition of Two Variables
- Declare two byte variables, `NUM1 DB 5` and `NUM2 DB 3`.
- Load `NUM1` into the AL register.
- Add `NUM2` to AL using the `ADD` instruction.

**Expected result:** AL = 8

## Instructions Covered
- `MOV` – Transfer data
- `ADD` – Add values
- `SUB` – Subtract values
- `INC` – Increment a value by one
- `DEC` – Decrement a value by one
- `NEG` – Negate a value using two's complement

## Tools Used
- 8086 Assembly Language
- EMU8086 Emulator

## Learning Objectives
- Understand basic arithmetic
