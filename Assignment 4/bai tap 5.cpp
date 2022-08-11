#include<stdio.h>
int main(){
	int n;
	int m;
	int p;
	do{
		printf("Nhap so n=");
		scanf("%d",&n);
	}
	while(n<=0);
	do{
		m=n%10;
		if(m>p){
		p=m;	
		}
	}
		while(n/=10);
	printf("Chu so lon nhat cua n la %d",p);
}
