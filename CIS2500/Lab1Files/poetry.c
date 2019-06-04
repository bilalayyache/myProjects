#include<stdio.h>
#include<string.h>

int main(){
	char str[200];
	int dataSet[10] = {0};
	int i = 0, j = 0, exit = 0, count = 1, word = 0, line = 0, totalWords = 0;
	str[0] = '\0';
	for(i = 0; exit == 0 ; i++)
	{
		if(str[0] == '\0')
		{
			printf("Enter your Poetry Here\n");
			scanf(" %[^\t\n]s", str);
		}else if(str[0] == '.')
		{
			printf("Finalizing Poem- Exiting Entry Mode\n");
			exit = 1;
 			printf("%d words on %d lines \n",totalWords,line);
	  		for(j=0; j< line; j++)
 			{printf("%d", dataSet[j]);}
 		}else if((str[i] >= 'A' && str[i] <= 'Z') || ((str[i] >= 'a' && str[i] <= 'z')))
		{
			count++;
		}else if(str[i] == ' ' && str[i+1] == '\0' ){}
		else if(str[i] == ' ' && count != 0 )
		{
			word++;
			totalWords++;
			count = 0;
		}else if(str[i] == '\0')
		{
			i=0;
			word++;
			totalWords++;
			line++;
			dataSet[line-1]= word;
			word = 0;
			scanf(" %[^\t\n]s", str);
			count++;
		}
	}
return 0;
}
