/*
1. Count all words in the file. A word is any 
sequence of characters delimited by white space 
or the end of a sentence, whether or not it is 
an actual English word.

2. Count all syllables in each word. To make this 
simple, use the following rules:
• Each group of adjacent vowels (a, e, i, o, u, y) 
counts as one syllable (for example, the “ea” in 
“real” counts as one syllable, but the “e..a” in 
“regal” count as two syllables). However, an “e” 
at the end of a word does not count as a syllable. 
Each word has at least one syllable even if the 
previous rules give a count of zero.

3. Count all sentences. A sentence is a group of 
words terminated by a period, colon, semicolon, 
question mark, or exclamation mark. Multiples of 
each of these characters should be treated as the 
end of a single sentence. For example, “Fred says
 so!!!” is one sentence.

4. The index is computed by:
index = 206.835 – 84.6 * ( #syllables / #words ) 
– 1.015 * (#words / #sentences)
rounded to the nearest integer (use the round 
function rather than ceiling or floor).
 */

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

    bool wordFlag = true;
    char letter;

    FILE * inFile = NULL;
    inFile = fopen(argv[1], "r");

    if (inFile == NULL) {
        printf("ERROR: Could not open file.\n");
    }else
    {
        while((letter = getc(inFile)) != EOF)
        {
            printf("%c", letter);
            if(checkLetter(letter) == 1 && wordFlag == true) /* his is a space*/
            {
                printf("1");
                wordCount++;
                wordFlag = false;
                
            }else if(checkLetter(letter) == 2) /*This is a period*/
            {
                printf("2");
                wordCount++;
                sentenceCount++;
                wordFlag = false;
            }else if(checkLetter(letter) == 3 || checkLetter(letter) == 4)
            {
                letterCount++;
                wordFlag = true;
            }

        }
        fclose(inFile);
    }
    printf("Number of words: %d\n", wordCount); /* Should be 26 */
    printf("Number of Sentences: %d\n", sentenceCount); /* Should be 4 */
    return 0;
}