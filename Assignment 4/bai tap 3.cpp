#include<stdio.h>
int main(){
	int n;
	printf("Nhap so n=");
	scanf("%d",&n);
	int m;
	int p=0;
	for(m=0;n!=0;n/=10){
		m=n%10;
		p=p+m;
	}
	printf("Tong cac chu so cua n la %d",p);
}
