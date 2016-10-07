segment .data
  msg db 'Hello world!', 0xa
  len equ $ - msg
  l2 times 9 db '*'
  l3 db '', 0xa

segment .text
  global _start

_start:
  mov edx, len
  mov ecx, msg
  mov ebx, 1
  mov eax, 4
  int 0x80

  mov [msg], word 'Hi'
  mov edx, len
  mov ecx, msg
  mov ebx, 1
  mov eax, 4
  int 0x80

  mov edx, 9
  mov ecx, l2
  mov ebx, 1
  mov eax, 4
  int 0x80

  mov edx, 1
  mov ecx, l3
  mov ebx, 1
  mov eax, 4
  int 0x80

  mov eax, 1
  int 0x80
