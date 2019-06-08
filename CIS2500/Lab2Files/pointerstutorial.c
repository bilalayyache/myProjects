#include<stdio.h>
#include<stdlib.h>

int main()
{
	int tuna =  19;
	int *ptuna = &tuna;

	printf("Address \t Name \t Value \n");
	printf("%p \t %s \t %d \n", &tuna, "tuna", tuna);
	printf("%p \t %s \t %p \n", &ptuna, "ptuna", ptuna);

	printf("*ptuna: %d\n", *ptuna); //prints value

	int i;
	int meatballs[5]= {5,6,7,8,9};

	for(i=0; i<5 ; i++){
		printf("Meatballs(%d) \t %p \t %d\n", i, &meatballs[i], meatballs[i] );
	}

	printf("Meatballs \t %d \t\n", *meatballs);

}
