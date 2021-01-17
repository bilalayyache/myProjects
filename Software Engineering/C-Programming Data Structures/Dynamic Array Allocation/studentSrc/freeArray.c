#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "arrayDefns.h"

void freeArray ( int **array, int rows, int cols)
{
	int i = 0;
	for ( i=0; i<rows; i++ ) {
	free ( array[i] ); 
	    } 
	free (array);	
}