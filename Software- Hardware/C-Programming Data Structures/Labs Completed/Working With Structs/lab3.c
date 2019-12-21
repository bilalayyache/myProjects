#include<stdio.h>
#include<stdlib.h>
#include<string.h>

struct student{
	char *firstName;
	char *lastName;
	char *id;
	char *email;
	int recordCount;
};

int main(){

	int MAX = 51;

	struct student *sPtr;
	int i = 0, x = 0;
	int flag = 0;
	char buffer[MAX];

	sPtr= malloc(sizeof(*sPtr));
	sPtr -> recordCount = 0;

	while(flag == 0)
	{
		printf("Enter First Name: \n");
		fgets(buffer,MAX,stdin);
		if(buffer[0] == '.')
		{
			i--;
			flag = 1;
			break;
		}
		if(buffer[strlen(buffer)-1] == '\n') { buffer[strlen(buffer) - 1] = '\0'; }
		sPtr[i].firstName = malloc(sizeof(char) * (strlen(buffer)+1));
		strncpy((sPtr[i].firstName),buffer,(strlen(buffer) + 1));

		printf("Enter lastName: \n");
		fgets(buffer,MAX,stdin);
		if(buffer[strlen(buffer)-1] == '\n') { buffer[strlen(buffer) - 1] = '\0'; }
		sPtr[i].lastName = malloc(sizeof(char) * (strlen(buffer)+ 1));
		strncpy((sPtr[i].lastName),buffer,(strlen(buffer) + 1));

		printf("Enter email: \n");
		fgets(buffer,MAX,stdin);
		if(buffer[strlen(buffer)-1] == '\n') { buffer[strlen(buffer) - 1] = '\0'; }
		sPtr[i].email = malloc(sizeof(char) * (strlen(buffer)+ 1));
		strncpy((sPtr[i].email),buffer,(strlen(buffer) + 1));

		printf("Enter ID#: \n");
		fgets(buffer,MAX,stdin);
		if(buffer[strlen(buffer)-1] == '\n') { buffer[strlen(buffer) - 1] = '\0'; }
		sPtr[i].id = malloc(sizeof(char) * (strlen(buffer)+ 1));
		strncpy((sPtr[i].id),buffer,(strlen(buffer) + 1));

		sPtr[i].recordCount = i+1;
		i++;
		sPtr = realloc(sPtr, sizeof(*sPtr) * (i+1));
	}
	//SORTING
	int totalStudent = i;
	int rankSort[totalStudent];
	int idSort[totalStudent];

	for(x=0;x<totalStudent+1;x++){
		rankSort[x] = x;
		idSort[x] = atoi(sPtr[x].id);
	}

	int a,b,idTemp,rankTemp;

	for( a=0 ; a<=totalStudent-1 ; a++){
		for(b=1; b<=totalStudent-a; b++){
			if(idSort[b-1] >=idSort[b]){
				idTemp = idSort[b-1];
				idSort[b-1]= idSort[b];
				idSort[b] = idTemp;

				rankTemp = rankSort[b-1];
				rankSort[b-1] = rankSort[b];
				rankSort[b] = rankTemp;
			}
		}
	}
	for(x=0; x<totalStudent+1;x++){
		 printf("%s, %s, %s, %s\n",sPtr[rankSort[x]].id, sPtr[rankSort[x]].firstName, sPtr[rankSort[x]].lastName, sPtr[rankSort[x]].email);
	}
	free(sPtr);
}



