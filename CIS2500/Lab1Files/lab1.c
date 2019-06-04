#include<stdio.h>
#include<string.h>

void main(){
	char str[200]= "";
	int letters[10]= {0};
	int lettersPerLine[10]= {0};
	int i=0, j = 0, letter = 0, count = 0, word = 0, line = 0, exit = 0;

	printf("ENTER SENTENCE HERE: \n");

	while(str[0] != '.')
	{
		exit = 0;

		scanf(" %[^\t\n]", str);

		line++;

		for(i = 0; exit == 0 ; i++)
		{
			if(str[i] == ' ')
			{
				letters[word] = count-1;
				count = 0;
				lettersPerLine[line] = lettersPerLine[line] + letters[word];
				word++;

				printf("word: %d\n", word);
				printf("letters: %d\n",letters[word-1]);

			}else if(str[i] == '\0')
			{
				letters[word] = count-1;
				count = 0;
				lettersPerLine[line] = lettersPerLine[line] + letters[word];
				word++;

				printf("word: %d\n", word);
				printf("letters: %d\n",letters[word-1]);

				//lettersPerLine[line] = lettersPerLine[line] + letters[word];

				//printf("%d letter in line %d\n",lettersPerLine[line], line);
				exit = 1;
			}
		count++;
		}
		
	}

	printf("%d words on %d lines\n", word-1, line-1);

//	for(j=0; j< line; j++)
//	{
//		printf("%d words in line %d", lettersPerLine[line], line);
//	}
}
