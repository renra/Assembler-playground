all: clean hello read directives segfault

hello:
	nasm -f elf64 hello.asm
	ld -s -o hello hello.o

read:
	nasm -f elf64 read.asm
	ld -s -o read read.o

directives:
	nasm -f elf64 directives.asm
	ld -s -o directives directives.o

segfault:
	nasm -f elf64 segfault.asm
	ld -s -o segfault segfault.o

clean:
	rm -f hello read directives segfault \
        hello.o read.o directives.o segfault.0

