CC=gcc
CFLAGS=-Wall -ansi -pedantic

a4: a4.o hash.o 
	$(CC) -o a4 a4.o hash.o 

	

hash.o: hash.c a4.h hash.h 
	$(CC) $(CFLAGS) -c hash.c -o hash.o

a4.o: a4.c a4.h hash.h
	$(CC) $(CFLAGS) -c a4.c -o a4.o

memtest: all
	valgrind ./bin/runTests

clean: 
	rm a4.o hash.o a4
