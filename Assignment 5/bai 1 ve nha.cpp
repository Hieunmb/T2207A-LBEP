#include<stdio.h>
int main(){
	float s=0;
	int n;
	printf("Nhap so n=");
	scanf("%d",&n);
	for(float i=1;i<=n;i++){
		s=s+1/i;
	}
	printf("Tong S=%f",s);
}
