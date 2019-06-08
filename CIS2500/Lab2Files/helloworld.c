#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main()
{
	int MAXSIZE = 1000;
	char *string;
	char **array;
	char inputstr[MAXSIZE + 1];
	int i = 0, j = 0, k = 0;

	inputstr[0]= 0;

	array = malloc(sizeof(char*) * 1);

	printf("Enter a line\n");

	while(*inputstr != '.'){

		fgets(inputstr, MAXSIZE, stdin);
		inputstr[strlen(inputstr) - 1] = '\0';
		printf("ADDRESS \t  NAME \t  VALUE\n"); 

		if(*inputstr != '.'){

			string = malloc(sizeof(char*) * (strlen(inputstr) + 1)   );
			strncpy(string, inputstr, strlen(inputstr)+1);

			for(k = 0; k < strlen(inputstr) + 1; k++){
			printf("%p \t STRING[%d] \t %c\n", &string[k],k, string[k] );
			}
			array[j] = malloc((sizeof(char*))*(strlen(string))+1);
			strncpy(array[j],string,strlen(string)+1);

			free(string);
			j++;
			array = realloc(array, (j+1) * sizeof(char*));

			printf("%p \t Array[%d] \t %s\n", &array[j-1],j-1, array[j-1]);
		}
	}
}

