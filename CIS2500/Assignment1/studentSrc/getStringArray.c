#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include<arrayDefns.h>

    
char *getStringArray (char **array, int index) 
{
	char *string;
	
	string = array[index];
	return string;	
}