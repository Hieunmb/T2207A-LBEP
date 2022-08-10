#include<stdio.h>
int main(){
	int m;
	int n;
	int p=0;
	printf("Nhap so n=");
	scanf("%d",&n);
	for(m=1;n>=m;m++){
	if(n%m==0)
	p=p+1;}
	if(p==2){
	printf("%d la so nguyen to",n);}
	else{printf("%d khong phai so nguyen to",n);}
	}
