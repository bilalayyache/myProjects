#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include<arrayDefns.h>
#include<arrayVars.h>

int numRow;
int numCol;

int *create2DArray ( int rows, int cols)
{
    int *sptr;   

    numRow = rows;
    numCol = cols;

    sptr = malloc ( sizeof(int *) * rows * cols);

    return sptr;
}