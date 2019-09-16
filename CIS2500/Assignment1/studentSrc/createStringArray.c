#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include<arrayDefns.h>

char **createStringArray (int number)
{
	char **sptr;
	sptr = malloc ( sizeof(char*) * number);
	
	return sptr;	
}