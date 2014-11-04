segment .data
  prompt db 'Please enter any key', 0xa
  promptLen equ $-prompt
  feedback db 'So you have entered: '
  feedbackLen equ $-feedback

segment .bss
  character resb 5

section .text
  global _start

_start:
  mov eax, 4   ;sys_write
  mov ebx, 1   ;stdout
  mov ecx, prompt
  mov edx, promptLen
  int 0x80

  mov eax, 3   ;sys_read
  mov ebx, 2   ;stdin
  mov ecx, character
  mov edx, 5
  int 0x80

  mov eax, 4   ;sys_write
  mov ebx, 1   ;stdout
  mov ecx, feedback
  mov edx, feedbackLen
  int 0x80

  mov eax, 4   ;sys_write
  mov ebx, 1   ;stdout
  mov ecx, character
  mov edx, 5
  int 0x80

  mov eax, 1   ;sys_exit
  mov ebx, 0   ;retcode
  int 0x80
