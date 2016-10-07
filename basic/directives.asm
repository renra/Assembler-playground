section .data
  %assign SUM 20
  %assign SUM 50

  %define TOTAL 100
  ; %define TOTAL 200

  STDOUT    equ 1
  STDIN     equ 2

  SYS_EXIT  equ 1
  SYS_READ  equ 3
  SYS_WRITE equ 4

section .text
  global _start

_start:
  mov eax, SYS_WRITE
  mov ebx, STDIN
  mov ecx, SUM   ; Does not print anything
  mov edx, 10
  int 0x80

  mov eax, SYS_EXIT
  mov ebx, 0
  int 0x80
