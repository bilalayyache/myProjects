CC=gcc
CFLAGS=-Wall -ansi -g -IInc -Llib

fleschIndex : fleschIndex.o isEnd.o checkLetter.o
	$(CC) -o fleschIndex bin/fleschIndex.o bin/isEnd.o bin/checkLetter.o

fleschIndex.o: Src/fleschIndex.c Inc/funcDef.h
	$(CC) $(CFLAGS) -c Src/fleschIndex.c -o bin/fleschIndex.o

isEnd.o: Src/isEnd.c Inc/funcDef.h
	$(CC) $(CFLAGS) -c Src/isEnd.c -o bin/isEnd.o

checkLetter.o: Src/checkLetter.c Inc/funcDef.h
	$(CC) $(CFLAGS) -c Src/checkLetter.c -o bin/checkLetter.o

memtest: all
	valgrind ./bin/runTests

clean:
	rm bin/*