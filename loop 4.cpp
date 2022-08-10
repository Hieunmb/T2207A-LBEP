#include<stdio.h>
int main(){
	int m;
	int p=0;
	int n;
	printf("Nhap so n:");
	scanf("%d",&n);
	for(m=1;n!=0;n/=10){
		m=n%10;
		p=p*10+m;
	}
	printf("So nghich dao la %d",p);
}
