#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(){

	char input[] = "My name is bilal";

	char *string = input;
	char **array = &string;

	//string = malloc(sizeof(char*) * (strlen(input) + 1));
	//strncpy(string, input, strlen(input) + 1);

	printf("ADDRESS \t  NAME \t  VALUE\n");
	printf("%p /t input /t %s\n", input, input);
	printf("%p /t String /t %p\n",&string,string);


	//array[0] = malloc((sizeof(char*))*(strlen(string))+1);
	//strncpy(array[0],string,strlen(string)+1);

	printf("%p /t Array /t %p\n",&array, *array);

	//free(string);
	//for(int i=0; i< (strlen(string)) ; i++){
	//	printf("%p \t String[%d] \t %p\n", &string[i], i, string[i]);
///		}
//	}
}
