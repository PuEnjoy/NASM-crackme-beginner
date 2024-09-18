section .data
inputmsg: db "Enter the code: ", 10
inputmsglen: equ $ - inputmsg
secret: db "ronja"
wrongmsg: db "WORNG!", 10
correctmsg: db "COREECT!", 10

section .bss
inbuffer: resw 1

section .text
global _start

_start:
mov rax, 1
mov rdi, 1
lea rsi, inputmsg
mov rdx, inputmsglen
syscall
mov rax, 0
mov rdi, 1
lea rsi, inbuffer
mov rdx, 16
syscall

_checkpw:
lea rdi, [secret]
lea rsi, [inbuffer]
mov rcx, 5
repe cmpsb
jne _wrong
mov rax, 1
mov rdi, 1
lea rsi, correctmsg
mov rdx, 9
syscall
jmp _exit

_wrong:
mov rax, 1
mov rdi, 1
lea rsi, wrongmsg
mov rdx, 7
syscall
jmp _exit

_exit:
mov rax, 60
mov rdi, 0
syscall