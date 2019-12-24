CC=gcc
CFLAGS=-Wall -ansi -pedantic


test2: test2.o ds_memory.o ds_list.o 
	$(CC) -o test2 test2.o ds_memory.o ds_list.o

test1.o: test1.c ds_memory.h ds_array.h
	$(CC) $(CFLAGS) -c test1.c -o test1.o

test2.o: test2.c ds_list.h ds_memory.h
	$(CC) $(CFLAGS) -c test2.c -o test2.o

ds_list.o: ds_list.c ds_list.h ds_memory.h
	$(CC) $(CFLAGS) -c ds_list.c -o ds_list.o

ds_array.o: ds_array.c ds_array.h ds_memory.h
	$(CC) $(CFLAGS) -c ds_array.c -o ds_array.o

ds_memory.o: ds_memory.c ds_memory.h
	$(CC) $(CFLAGS) -c ds_memory.c -o ds_memory.o

memtest: all
	valgrind ./bin/runTests

clean: 
	rm test1.o test2.o ds_list.o ds_array.o ds_memory.o test1 test2 list.bin
