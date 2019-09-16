#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "arrayDefns.h"
#include "arrayVars.h"

int main ( )
{
   int *array;
   int rows, cols;
   int value, newvalue;
   int i, j;

   rows = 3;
   cols = 5;
   printf ( "array = create2DArray ( %d, %d )\n\n", rows, cols );
   array = create2DArray ( rows, cols );

   value = 0;
   for ( i=0; i<rows; i++ ) { 
      for ( j=0; j<cols; j++ ) { 
         value = value + 1;
         printf ( "array = set2DElement ( array, %d, %d, %d )\n", i, j, value );
         set2DElement ( array, i, j, value );
      }
   }

   printf ( "\n" );
   
   newvalue = 0;
   for ( i=0; i<rows; i++ ) { 
      for ( j=0; j<cols; j++ ) { 
         newvalue = get2DElement ( array, i, j );
         printf ( "%d = get2DElement ( array, %d, %d )\n", newvalue, i, j );
      }
   }

   printf ( "\nfree2DArray ( array )\n" );
   free2DArray ( array );

   return(0);
}