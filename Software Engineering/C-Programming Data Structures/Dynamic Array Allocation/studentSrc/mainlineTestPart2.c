#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "arrayDefns.h"

#define MAXSIZE 100

int main ( )
{
   char **arrayPtrs;
   char *string;
   char inputStr[MAXSIZE+1];
   int number;
   int i;

   number = 4;
   printf ( "arrayPtrs = createStringArray ( %d )\n\n", number );
   arrayPtrs = createStringArray ( number );

   for ( i=0; i<number; i++ ) { 
      printf ( "Enter a string: " );
      fgets ( inputStr, MAXSIZE, stdin );
      inputStr[strlen(inputStr)-1] = '\0';
      string = malloc ( sizeof(char) * (strlen(inputStr)+1) );
      strncpy ( string, inputStr, strlen(inputStr)+1 );
      printf ( "setStringArray ( arrayPtrs, %d, %s )\n", i, string );
      setStringArray ( arrayPtrs, i, string );
      free ( string );
   }

   printf ( "\n" );
   
   for ( i=0; i<number; i++ ) { 
      string = getStringArray ( arrayPtrs, i );
      printf ( "%s = getStringArray ( arrayPtrs, %d )\n", string, i );
   }

   printf ( "\nfreeStringArray ( arrayPtrs, %d )\n", number );
   freeStringArray ( arrayPtrs, number );

   return(0);
}