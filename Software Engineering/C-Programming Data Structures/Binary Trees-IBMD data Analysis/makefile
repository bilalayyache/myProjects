CC=gcc
CFLAGS=-Wall -ansi -pedantic

a3: a3.o binary.o name.o title.o principals.o common.o
	$(CC) -o a3 a3.o binary.o name.o title.o principals.o common.o

binary.o: binary.c common.h title.h principals.h name.h
	$(CC) $(CFLAGS) -c binary.c -o binary.o

name.o: name.c common.h binary.h
	$(CC) $(CFLAGS) -c name.c -o name.o

title.o: title.c common.h binary.h
	$(CC) $(CFLAGS) -c title.c -o title.o

principals.o: principals.c common.h binary.h
	$(CC) $(CFLAGS) -c principals.c -o principals.o

common.o: common.c common.h
	$(CC) $(CFLAGS) -c common.c -o common.o

a3.o: a3.c binary.h common.h name.h principals.h title.h
	$(CC) $(CFLAGS) -c a3.c -o a3.o

memtest: all
	valgrind ./bin/runTests

clean: 
	rm a3.o principals.o title.o name.o binary.o common.o a3
