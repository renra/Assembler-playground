all: clean hello read

hello:
	nasm -f elf64 hello.asm
	ld -s -o hello hello.o

read:
	nasm -f elf64 read.asm
	ld -s -o read read.o

clean:
	rm -f hello read hello.o read.o

