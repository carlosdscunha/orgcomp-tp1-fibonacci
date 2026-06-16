all:
	nasm -f elf64 -g -F dwarf fibonacci.asm -o fibonacci.o
	ld fibonacci.o -o fibonacci

clean:
	rm -f fibonacci.o fibonacci
