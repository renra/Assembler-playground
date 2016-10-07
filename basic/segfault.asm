section .data
  %define SYS_EXIT 1

section .text
  global _start

_start:
  mov eax, SYS_EXIT
  mov ebx, 0  ; MUHEHE
