CC=gcc
CFLAGS=-Wall -ansi

poetry : poetry.o
	$(CC) -o poetry poetry.o

peotry.o: poetry.c
	S(CC) $(CFLAGS) -c poetry.c

clean :
	rm poetry.o
