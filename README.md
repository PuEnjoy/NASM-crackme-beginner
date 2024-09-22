# NASM-crackme-beginner
- [NASM-crackme-beginner](#nasm-crackme-beginner)
  - [What are Crackmes](#what-are-crackmes)
  - [Introduction](#introduction)
    - [Safety note](#safety-note)
  - [Goal](#goal)
## What are Crackmes
Here, we will tackle our very first reverse engineering task. No prior knowledge of reverse engineering or disassembly tools is needed for this exercise.

A program designed to be cracked is often referred to as a "crackme." There are several types of crackmes, including: 

This type of program, which was made to be cracked is often refered to as a `crackme`. There is many type of crackmes like:
- `keygens`, which require you to find or generate a valid key or password.
- `capture the flags`, where your task is to print out a specific flag hidden in the program.
- `patchmes`, which ask you to modify the program's code.
- `debuggmes`, where you are expected to analyze the program by stepping through its execution using debuggers. 

Unless specifically stated, these programs typically do not want you to simply modify the code, as that would be too easy. Instead, you are expected to decompile or disassemble the program to understand its functionality.

## Introduction
This crackme falls into the **keygen** category, meaning your task is to find a valid password without altering the program in any way.

In terms of difficulty, this is a very easy exercise designed as an introduction to the topic. It is recommended for beginners or for those learning to use new tools.

There are three difficulty levels at which you can attempt to solve this crackme. The program remains the same, but the environment varies.

| Difficulty | Provided         | Prerequisites             |
| ---------- | ---------------- | ------------------------- |
| Easy       | Source code      | None                      |
| Normal     | Disassembly view | None - less information   |
| Advanced   | Executable file  | Disassembling executables |

For beginners, I recommend starting with the [Normal](https://github.com/PuEnjoy/NASM-crackme-beginner/tree/main/Normal) difficulty, using [Easy](https://github.com/PuEnjoy/NASM-crackme-beginner/tree/main/Easy) as a hint when you get stuck. If you are already capable of disassembling an executable file, you can attempt the [Advanced](https://github.com/PuEnjoy/NASM-crackme-beginner/tree/main/Advanced) difficulty.

### Safety note
If you're not comfortable downloading and running an unknown executable file from the internet (which you are supposed to be), you can avoid running or even downloading the program by using the Easy or Normal difficulty settings. Then, you can just check the solution to verify your approach.

## Goal
Your goal for this crackme is to find a password that results in the program printing `CORRECT!`.
