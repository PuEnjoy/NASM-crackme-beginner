# NASM-crackme-beginner
- [NASM-crackme-beginner](#nasm-crackme-beginner)
  - [What are Crackmes](#what-are-crackmes)
  - [Introduction](#introduction)
## What are Crackmes
Here we will tackle our very first reverse engineering task. No knowledge about any reverseengineering or disassembly tools is needed for this task. 

This type of program, which was made to be cracked is often refered to as a `crackme`. There is many type of crackmes like:
- `keygens` which require you to find / generate your own key / password
- `capture the flags` which will have you print out a certain flag hidden in the program
- `patchmes` wich ask you to change the programs code
- `debuggmes` for which you are asked to get to the result by jumping through the programs execution using debuggers. 

Unless specifically asked, those programs typically don't want to you simply change the code as that would be too easy. Instead you are supposed to decompile/disassemble the program to gain an understanding about the functionality.

## Introduction
This crackme falls into the keygen category meaning your are supposed to find a valid password without altering the program in any way. 

Difficulty wise this is a very easy exercise intended to be an introduction to the topic. It is recommended for beginners or for learning to use new tools. 

There are 3 'Difficulties' at which you can try to solve the crack me. The program remains the same but the enviornmnet varies. 

| Difficulty | Provided         | Prerequisites             |
| ---------- | ---------------- | ------------------------- |
| Easy       | Source code      | None                      |
| Normal     | Disassembly view | None - less information   |
| Advanced   | Executable file  | Disassembling executables |

For beginners I recommend starting with the [Normal](#normal) difficulty, using [Easy](#easy) as hint for when you get stuck. If you are already capable of disassembling an executable file on your own, go with [Advanced](#advanced).