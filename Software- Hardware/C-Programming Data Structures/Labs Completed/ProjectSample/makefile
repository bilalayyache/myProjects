CC=gcc
CFLAGS=-Wall -ansi -g -IstudentIncludes -Llib

fleschIndex : fleschIndex.o 
	$(CC) -o fleschIndex bin/fleschIndex.o

fleschIndex.o: Src/fleschIndex.c Inc/funcDef.h
	$(CC) $(CFLAGS) -c Src/fleschIndex.c -o bin/fleschIndex.o

memtest: all
	valgrind ./bin/runTests

clean:
	rm bin/*