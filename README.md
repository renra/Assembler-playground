#A project where I will experiment with the Assembly language

These programs are written in Net Wide Assembly or simply nasm. To generate an object file from source .asm file do:

```
nasm -f elf hello.asm
```


To generate an executable do:

```
ld -s -o hello hello.o
```


To run the executable do:

```
./hello
```