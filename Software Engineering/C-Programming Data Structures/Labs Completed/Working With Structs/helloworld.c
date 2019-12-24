#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(int argc, char *argv[]){

	if(argc < 6 || argc > 7) {
		printf("Only 5 arguments are allowed\n");
		return -1; //exit the program
	}

	int a = atoi(argv[1]);
	int b = atoi(argv[2]);
	int c = atoi(argv[3]);
	int d = atoi(argv[4]);
	int e = atoi(argv[5]);

	int Largest = a;
	int smallest = b;
	int sum = 0;
	int secondSmallest = c;

	for(int i = 1; i < 6; i++){
		sum = sum + atoi(argv[i]);
		if(atoi(argv[i]) > Largest){
			Largest = atoi(argv[i]);
		}
		if(atoi(argv[i]) < smallest){
			secondSmallest = smallest;
			smallest = atoi(argv[i]);
		}
		else if(atoi(argv[i]) < secondSmallest && atoi(argv[i]) != smallest){
			secondSmallest = atoi(argv[i]);
		}
	}

	printf("smallest: %d, Second smallest: %d, sum : %d /n", smallest,secondSmallest, sum);

	return 0;
}
