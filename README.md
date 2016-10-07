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

For more information on nasm and ld do:

```
man nasm
man ld
```

This project is realized on a unix platform as that allows me to see deeper into the system.
