#include<stdio.h>
#include<stdlib.h>
int main(){
	int n;
	printf("Nhap mang n =");
	scanf("%d",&n);
	int x=0;
	int a[n];
	for(int i=0;i<n;i++){
		scanf("%d",&a[i]);
	}
	for(int i=0;i<n;i++){
		if(abs(a[i])>x){
		x=abs(a[i]);}
	}
		printf("Vay gia tri cua doan la [%d;%d]",-x,x);
	}
