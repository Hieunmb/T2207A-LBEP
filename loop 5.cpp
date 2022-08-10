#include<stdio.h>
int main(){
	int a,b,c;
	printf("Nhap so a=");
	scanf("%d",a);
	printf("Nhap so b=");
	scanf("%d",b);
	printf("Nhap so c=");
	scanf("%d",c);
	while(a>b+c&&b>c+a&&c>a+b);
	printf("3 canh do la 3 canh cua tam giac");
}
