#include<stdio.h>
#include<stdlib.h>
extern int add2(int i, int j);
int main(){
	int i,j;
	i=20;
	j=5;
	int answer=add2(i,j);
	printf("result: %d\n",answer);
	return 0;
}