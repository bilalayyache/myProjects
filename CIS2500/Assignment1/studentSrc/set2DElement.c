#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include<arrayDefns.h>
#include<arrayVars.h>

    
void set2DElement ( int *array, int row, int col, int value) 
{
	array[(row*numCol)+col]  = value; 
}