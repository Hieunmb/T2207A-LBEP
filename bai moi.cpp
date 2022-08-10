#include<stdio.h>
int main(){
	int a,b,c;
	do{
	printf("Nhap so a=");
	scanf("%d",&a);
	printf("Nhap so b=");
	scanf("%d",&b);
	printf("Nhap so c=");
	scanf("%d",&c);}
	while(!(a<b+c&&b<a+c&&c<b+a));
	printf("3 canh do la 3 canh cua tam giac");
}

