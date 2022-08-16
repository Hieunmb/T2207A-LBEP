#include<stdio.h>
int main(){
	int m=0;
	int n;
	printf("Nhap mang n=");
	scanf("%d",&n);
	int ary[n];
	for(int i=0;i<n;i++){
		scanf("%d",&ary[i]);
	}
	for(int i=0;i<n;i++){
		if(ary[i]%2==1){
		m=ary[i];}			
}
printf("So le cuoi cung la %d",m);
}
