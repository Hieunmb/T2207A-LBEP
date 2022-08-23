#include<stdio.h>
#include<stdlib.h>
int maxArray(int *arr,int n){
	///
}
int main(){
	int arr[10];
	int *p;
	p=(int*)malloc(10*sizeof(int));
	//p=(int*)calloc(10,sizeof(int));
	for(int i=0;i<10;i++){
		scanf("%d",&p[i]);
	}
	p=(int*)realloc(p,15*sizeof(int));
	free(p);
	printf("hello world..");
}
