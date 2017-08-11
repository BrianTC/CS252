#include<stdio.h>
#include<stdlib.h>
extern int numodd(int array[], int array_size);
int main(){
	int numarray[] = {2,3,1025,3024,4057,-3,-1025,-3578};
	int size = sizeof(numarray)/sizeof(int);
	int answer=numodd(numarray,size);
	printf("Number of odd numbers: %d\n",answer);
	return 0;
}