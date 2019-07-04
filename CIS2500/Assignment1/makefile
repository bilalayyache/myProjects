CC=gcc
CFLAGS=-Wall -ansi -g -IstudentIncludes -Llib

all: create2DArray.o createStringArray.o createArray.o
	$(CC) $(CFLAGS) -o bin/runTests lib/testMain.o bin/create2DArray.o bin/createArray.o bin/createStringArray.o

create2DArray.o: studentSrc/create2DArray.c studentIncludes/arrayDefns.h
	$(CC) $(CFLAGS) -c studentSrc/create2DArray.c -o bin/create2DArray.o

createStringArray.o: studentSrc/createStringArray.c studentIncludes/arrayDefns.h
	$(CC) $(CFLAGS) -c studentSrc/createStringArray.c -o bin/createStringArray.o

createArray.o: studentSrc/createArray.c studentIncludes/arrayDefns.h
	$(CC) $(CFLAGS) -c studentSrc/createArray.c -o bin/createArray.o

a1SampleTest:
		$(CC) $(CFLAGS) testMain.c -c -o lib/testMain.o

memtest: all
	valgrind ./bin/runTests

clean:
	rm bin/*
