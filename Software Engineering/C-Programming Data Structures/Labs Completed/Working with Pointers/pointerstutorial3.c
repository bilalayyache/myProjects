#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(){
	int MAXINPUT = 1000;
	char input[] = "";
	int i = 0, j = 0;

	char** array;

	array = malloc(sizeof(char));

	printf("Enter your line here: \n");
	while(input[0] != '.'){
		fgets(input,MAXINPUT ,stdin);

		if(input[0] != '.'){
			array[i] =(malloc((sizeof(char*))*(strlen(input))+1));
			strcpy(array[i], input);
			i++;
		}else if(input[0] == '.'){
			for(j = i-1; j>= 0; j--){printf("%s", array[j]);}
		}
	}
	free(array);
}
