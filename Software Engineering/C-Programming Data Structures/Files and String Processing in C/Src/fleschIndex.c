#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <funcDef.h>
#include <stdbool.h>


int main (int argc, char ** argv)
{
    int letterCount = 0;
    int wordCount = 0;
    int sentenceCount = 0;
    int sylablecount = 0;
    int index = 0;
    int wordSyl = 0;

    bool wordFlag = true;
    bool sentenceFlag = true;
    bool justAddedSyl = false;

    char letter;

    FILE * inFile = NULL;
    inFile = fopen(argv[1], "r");

    if (inFile == NULL) {
        printf("ERROR: Could not open file.\n");
    }else
    {
        while((letter = getc(inFile)) != EOF)
        {
            if(checkLetter(letter) == 1 && wordFlag == true) /* his is a space*/
            {
                if(justAddedSyl == true)
                {
                    sylablecount--;
                    wordSyl--;
                }
                if(wordSyl == 0)
                {
                    sylablecount++;
                }
                wordCount++;
                wordSyl = 0;
                wordFlag = false;
                justAddedSyl = false;
            }else if(checkLetter(letter) == 2 && sentenceFlag == true) /*This is a period*/
            {
                if(justAddedSyl == true)
                {
                    sylablecount--;
                    wordSyl--;
                }
                if(wordSyl == 0)
                {
                    sylablecount++;
                }
                wordCount++; 
                wordSyl = 0;            
                sentenceCount++;
                wordFlag = false;
                sentenceFlag = false;
                justAddedSyl = false;
            }else if(checkLetter(letter) == 3 || checkLetter(letter) == 4)
            {

                letterCount++;
                wordFlag = true;
                sentenceFlag = true;
                
                if((letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u' || letter == 'y' ||letter == 'A' || letter == 'E' || letter == 'I' || letter == 'O' || letter == 'U' || letter == 'Y') && justAddedSyl == false)
                {
                    sylablecount++;
                    wordSyl++;
                    justAddedSyl = true;
                }else{
                    justAddedSyl = false;
                }
            }
        }
        fclose(inFile);
    }

    index = 206.835 - (84.6 * (sylablecount/wordCount)) - (1.015 * (wordCount/sentenceCount));

    printf("Number of words: %d\n", wordCount); /* Should be 26 */
    printf("Number of Sentences: %d\n", sentenceCount); /* Should be 4 */
    printf("Number of sylable: %d\n", sylablecount); /* Should be 32 */
    printf("Flesh Index: %d\n", index); /* Should be 32 */

    return 0;
}