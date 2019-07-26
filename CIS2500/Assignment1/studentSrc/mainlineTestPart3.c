    
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "arrayDefns.h"

int main ( )
{
   int **table;
   int rows, cols;

   rows = 10;
   cols = 20;
   printf ( "table = createArray ( %d, %d )\n\n", rows, cols );
   table = createArray ( rows, cols );

   printf ( "Storing 33, 44, 55\n" );
   table[2][7] = 33;
   table[3][4] = 44;
   table[9][19] = 55;
   
   printf ( "Retrieving %d, %d, %d\n", table[2][7],table[3][4], table[9][19] );
  
   freeArray ( table, rows, cols );
 
   return(0);
}