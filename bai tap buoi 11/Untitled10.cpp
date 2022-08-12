#include<stdio.h>
int main(){
	for(int i=1;i<=5;i++){
		for(int j=1;j<=i;j++){
		 for(int k=1;k<=i;k++){
				printf("*");
		}
		printf(" ");
	}
	printf("\n");
}
}
