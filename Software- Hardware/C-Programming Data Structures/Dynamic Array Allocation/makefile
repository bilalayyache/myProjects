CC=gcc
CFLAGS=-Wall -ansi -g -IstudentIncludes -Llib

mainlineTestPart1 : mainlineTestPart1.o create2DArray.o set2DElement.o get2DElement.o free2DArray.o 
	$(CC) -o mainlineTestPart1 bin/mainlineTestPart1.o bin/create2DArray.o bin/set2DElement.o bin/get2DElement.o bin/free2DArray.o

mainlineTestPart2 : mainlineTestPart2.o createStringArray.o setStringArray.o getStringArray.o freeStringArray.o
	$(CC) -o mainlineTestPart2 bin/mainlineTestPart2.o bin/createStringArray.o bin/setStringArray.o bin/getStringArray.o bin/freeStringArray.o

mainlineTestPart3 : mainlineTestPart3.o createArray.o freeArray.o 
	$(CC) -o mainlineTestPart3 bin/mainlineTestPart3.o bin/createArray.o bin/freeArray.o

mainlineTestPart1.o:studentSrc/mainlineTestPart1.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/mainlineTestPart1.c -o bin/mainlineTestPart1.o

mainlineTestPart2.o: studentSrc/mainlineTestPart2.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/mainlineTestPart2.c -o bin/mainlineTestPart2.o

mainlineTestPart3.o: studentSrc/mainlineTestPart3.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/mainlineTestPart3.c -o bin/mainlineTestPart3.o

create2DArray.o: studentSrc/create2DArray.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/create2DArray.c -o bin/create2DArray.o

set2DElement.o: studentSrc/set2DElement.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/set2DElement.c -o bin/set2DElement.o

get2DElement.o:studentSrc/get2DElement.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/get2DElement.c -o bin/get2DElement.o

free2DArray.o:studentSrc/free2DArray.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/free2DArray.c -o bin/free2DArray.o

createStringArray.o: studentSrc/createStringArray.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/createStringArray.c -o bin/createStringArray.o

setStringArray.o: studentSrc/setStringArray.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/setStringArray.c -o bin/setStringArray.o

getStringArray.o:studentSrc/getStringArray.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/getStringArray.c -o bin/getStringArray.o

freeStringArray.o:studentSrc/freeStringArray.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/freeStringArray.c -o bin/freeStringArray.o

createArray.o: studentSrc/createArray.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/createArray.c -o bin/createArray.o

freeArray.o: studentSrc/freeArray.c studentIncludes/arrayDefns.h studentIncludes/arrayVars.h
	$(CC) $(CFLAGS) -c studentSrc/freeArray.c -o bin/freeArray.o


memtest: all
	valgrind ./bin/runTests

clean:
	rm bin/*