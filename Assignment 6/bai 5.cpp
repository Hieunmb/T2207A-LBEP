#include<stdio.h>
int main(){
	int min=0;
	int m=0;
	int n;
	printf("Nhap so mang n=");
	scanf("%d",&n);
	int ary[n];
	for(int i=0;i<n;i++){
	scanf("%d",&ary[i]);}
	for(int i=0;i<n;i++){
	if(ary[i]>0){
		m=ary[i];}
	}
	for(int i=0;i<n;i++){
		if(ary[i]>0&&ary[i]<m){
		m=ary[i];}
	}
	printf("So duong nho nhat la %d",m);
}
