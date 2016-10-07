segment .data
  prompt db 'Please enter any key', 0xa
  promptLen equ $-prompt
  feedback db 'So you have entered: '
  feedbackLen equ $-feedback

  STDOUT    equ 1
  STDIN     equ 2

  SYS_EXIT  equ 1
  SYS_READ  equ 3
  SYS_WRITE equ 4

segment .bss
  character resb 5

section .text
  global _start

_start:
  mov eax, SYS_WRITE
  mov ebx, STDOUT
  mov ecx, prompt
  mov edx, promptLen
  int 0x80

  mov eax, SYS_READ
  mov ebx, STDIN
  mov ecx, character
  mov edx, 5
  int 0x80

  mov eax, SYS_WRITE
  mov ebx, STDOUT
  mov ecx, feedback
  mov edx, feedbackLen
  int 0x80

  mov eax, SYS_WRITE
  mov ebx, STDOUT
  mov ecx, character
  mov edx, 5
  int 0x80

  mov eax, SYS_EXIT
  mov ebx, 0   ;retcode
  int 0x80
