# Difficulty Easy
- [Difficulty Easy](#difficulty-easy)
  - [Running the Program](#running-the-program)
  - [Tutorial](#tutorial)
    - [\_start](#_start)
    - [\_checkpw](#_checkpw)
  - [Solution](#solution)

## Running the Program

To run the program either simply download the executable and run it using `./programname` or use NASM to assemble the sourcecode for 64 Bit systems:
```bash
nasm -f elf64 sourcecode.asm
```
create the executable:
```bash
ld sourcecode.o
```
run it:
```bash
./a.out
```

## Tutorial

In order to teach you a bit more about the prizess, I will be intentionally blind to the obvious solution and will be explaining the entire code.

Starting at the top we can see the `.bss` section in which one word is reserved unter the lable `inbuffer`. We can assume that this will be the location at which our input gets stored.

Next ist the `.text` section in which we can find four functions. We enjoy the rare luxary of knowing the original function names which can give a decent hint at what they are used for.
- `_start` begin of program execution
- `_checkpw` checks the password
- `_wrong` gets called when the password is wrong
- `_exit` exits the program
Lets check if that guess was right. 

### _start

We can see that the `_start` function consists of two syscalls.
```NASM
mov rax, 1
mov rdi, 1
lea rsi, inputmsg
mov rdx, inputmsglen
syscall
```
Looking at the syscall table for x86-64 Bit Linux, we can tell that this is a std sys_write. The `inputmsg` and `inputmsglen` lables are defined in the `.data` section which we will intentionally ignore for now. 

Save to say, this syscalls simply prints out the `Enter the code: ` message
```NASM
mov rax, 0
mov rdi, 1
lea rsi, inbuffer
mov rdx, 16
syscall
```
This syscall takes the user input and stores the first word (16 byte) at the `inbuffer` lable. Great, this validates our assumption about the `inbuffer` and `_start` function.

### _checkpw

The code load whatever is located at the lable `secret` and our input into the `rdi` and `rsi` registers respectively and `rcx` is set to 5. This is the setup for the following `repe cmpsb` instruction. If this insruction is new to you I encourage you to research it. 
```NASM
lea rdi, [secret]
lea rsi, [inbuffer]
mov rcx, 5
repe cmpsb
```
Whatever is located at the specified lables is treated as strings. We then compare the first 5 characters ie. first character of rdi with first of rsi then second of rdi with second of rsi etc.. When the characters 
## Solution
