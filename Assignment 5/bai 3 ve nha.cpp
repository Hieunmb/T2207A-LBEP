#include<stdio.h>
int main(){
	int n;
	int h,p,m;
	h=p=m=1;
	printf("Nhap so n=");
	scanf("%d",&n);
	for(int i=3;i<=n;i++){
		h=m+p;
		m=p;
		p=h;
	}
	printf("Ket qua cua day fibonaci thu %d la %d",n,h);
}
