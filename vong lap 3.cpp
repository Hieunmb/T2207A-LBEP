#include<stdio.h>
int main(){
	int s;
int n;
printf("Nhap so cuoi:");
scanf("%d",&n);
int m=1;
while (m<=n){
	s=s+m;
	m++;
}
printf("Tong bang %d",s);
}
