CC=gcc
CFLAGS=-Wall -ansi -pedantic -g 

runProgram: text.o 
	$(CC) -o runProgram text.o 

text.o: text.c text.h
	$(CC) $(CFLAGS) -c text.c -o text.o

memtest: all
	valgrind ./bin/runTests

clean: 
	rm text.o runProgram