#include<stdio.h>
int main(){
	int n;
	do{
	printf("Nhap so n=");
	scanf("%d",&n);}
	while(n<=0);
	int m;
	do{
		m=n%10;
	}
	while(n/=10);
	printf("So dau tien cua n la %d",m);
}
