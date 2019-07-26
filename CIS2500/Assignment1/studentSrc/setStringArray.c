#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include<arrayDefns.h>

void setStringArray(char **array, int index, char *string) 
{

	char *ptr;
	ptr = malloc ( sizeof(char*) * index);
	strcpy(ptr, string);
	
	array[index] = ptr;

}