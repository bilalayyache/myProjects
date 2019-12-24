#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <funcDef.h>
#include <stdbool.h>

int checkLetter(char strpointer)
{
    if(strpointer == ' ' || strpointer == '\n')
    {
        return 1; /* Space */
    }
    else if(strpointer == '.' || strpointer == '!' || strpointer == '?' || strpointer == ';')
    {

        return 2; /* Stopper */
    }
    else if(strpointer >= 'a'&& strpointer <= 'z')
    {
        return 3; /* Small letters */
    }
    else if(strpointer >= 'A'&& strpointer <= 'Z')
    {
        return 4; /* big letters */
    }
    else
    {
        return 0;
    }
    
}