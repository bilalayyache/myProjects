#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include<arrayDefns.h>

void freeStringArray (char **array, int number) 
{
	free (array);
}