%include "syscall.mac"
SECTION .text
GLOBAL _start
EXTERN printhex
_start:
Step1
Step2 1
Step2 2
Step2 3
Step2 4
Step2 5
Step2 6
Step2 7
mov rsi, [RD+8*0]
mov [C+8*8], rsi
mov rsi, [RD+8*1]
mov [C+8*9], rsi
mov rsi, [RD+8*2]
mov [C+8*10], rsi
mov rsi, [RD+8*3]
mov [C+8*11], rsi
mov rsi, [RD+8*4]
mov [C+8*12], rsi
mov rsi, [RD+8*5]
mov [C+8*13], rsi
mov rsi, [RD+8*6]
mov [C+8*14], rsi
mov rsi, [RD+8*7]
mov [C+8*15], rsi
mov rsi, C
mov rcx, 128
call printhex
EXIT
SECTION .data
A dq 0xffffffffffffffff, 0xffffffffffffffff, 0xffffffffffffffff, 0xffffffffffffffff,0xffffffffffffffff, 0xffffffffffffffff, 0xffffffffffffffff, 0xffffffffffffffff
B dq 0xffffffffffffffff, 0xffffffffffffffff, 0xffffffffffffffff, 0xffffffffffffffff,0xffffffffffffffff, 0xffffffffffffffff, 0xffffffffffffffff, 0xffffffffffffffff
C DQ 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
RD DQ 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
OP DQ 0x0
