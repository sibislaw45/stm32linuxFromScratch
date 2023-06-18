.syntax unified
.cpu cortex-m4
.thumb
.global _start
.global syscall

_start:
bl main
b .

syscall:
    stmfd sp!, {r1-r7}
    mov r7, r0
    mov r0, r1
    mov r1, r2
    mov r2, r3
    swi 0
    ldmfd sp!, {r1-r7}
    bx lr
