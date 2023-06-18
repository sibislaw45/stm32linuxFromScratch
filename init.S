.syntax unified
.cpu cortex-m4
.thumb
.global _start

_start:
bl main
b .
