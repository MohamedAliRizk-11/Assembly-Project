# Ask5Me game

## Description
This project is a simple quiz game written in **Assembly language**.  
It contains 5 multiple-choice questions. The user answers by pressing a key (1, 2, or 3).  
At the end, the program calculates and displays the total score.

---

## Requirements
- **NASM** or **TASM** compiler
- **DOSBox** (to run the executable)
- Basic knowledge of using command line in DOS

---

## How to Run
1. Open the `.asm` file in NASM/TASM.
2. Compile the code:
   - In NASM:  
     ```bash
     nasm -f bin quiz.asm -o quiz.com
     ```
   - In TASM:
     ```bash
     tasm quiz.asm
     tlink quiz.obj
     ```
3. Run the program in DOSBox:
   ```bash
   quiz.com
