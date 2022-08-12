#include<stdio.h>
int main(){
	int n;
	printf("Nhap so n");
	scanf("%d",n);
	int x=0;
	while(n!=0){
		if(x<n%10){
			x=n%10;}
			n/=10;
		}
		printf("%d la chu so lon nhat",x);
	}
