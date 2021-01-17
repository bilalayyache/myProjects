#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include<arrayDefns.h>
#include<arrayVars.h>

int numRow;
int numCol;

void free2DArray (int *array) 
{
    free ( array );
}