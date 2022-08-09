#include<stdio.h>
int main(){
	int m;
	int n;
	printf("Nhap so n=");
	scanf("%d",&n);
	for(m=1;n>=m;m++){
	if(n%m==0)
		printf("Cac so uoc cua n la %d\n",m);
	}
}
