#include<stdio.h>
int main(){
	int n;
	int s=1;
	printf("Nhap so n=");
	scanf("%d",&n);
	for(int i=1;i<=n;i++){
		s=s*i;
	}
	printf("Giai thua cua n=%d",s);
}
