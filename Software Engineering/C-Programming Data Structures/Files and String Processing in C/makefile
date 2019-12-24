CC=gcc
CFLAGS=-Wall -ansi -g -IInc -Llib

fleschIndex : fleschIndex.o checkLetter.o
	$(CC) -o fleschIndex bin/fleschIndex.o bin/checkLetter.o

fleschIndex.o: Src/fleschIndex.c Inc/funcDef.h
	$(CC) $(CFLAGS) -c Src/fleschIndex.c -o bin/fleschIndex.o

checkLetter.o: Src/checkLetter.c Inc/funcDef.h
	$(CC) $(CFLAGS) -c Src/checkLetter.c -o bin/checkLetter.o

memtest: all
	valgrind ./bin/runTests

clean:
	rm bin/*