#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "arrayDefns.h"

int **createArray (int rows, int cols)
{

	int **iptr;
	int i = 0;

	iptr = malloc ( sizeof(int *) * rows ); 
	for ( i=0; i<rows; i++ ) { 
	iptr[i] = malloc ( sizeof(int) * cols );
	} 
	
	return iptr;
	
}