#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include<arrayDefns.h>
#include<arrayVars.h>

int numRow;
int numCol;

int get2DElement ( int *array, int row, int col)
{
	int value = 0;
	value = array[(row*numCol)+col];
	
	return value;
}