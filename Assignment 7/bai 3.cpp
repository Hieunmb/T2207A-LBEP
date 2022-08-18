#include<stdio.h>
int main(){
	int a=0;
	int b=0;
	int n;
	printf("Nhap mang n=");
	scanf("%d",&n);
	int ary[n];
	for(int i=0;i<n;i++){
		scanf("%d",&ary[i]);
	}
	for(int i=0;i<n;i++){
		if(ary[i]>b){
			b=ary[i];}
		}
		a=b;
			for(int i=0;i<n;i++){
				if(a>ary[i]){
					a=ary[i];
				}
			}
			
	printf("Gia tri cua mang chua tat ca gia tri la [%d;%d]",a,b);
}
