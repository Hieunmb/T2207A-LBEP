#include<stdio.h>
int main(){
	int n;
	int m;
	int p=0;
	printf("Nhap so n=");
	scanf("%d",&n);
	for(m=1;m<=n;m++){
		if(n%m==0){
     printf("Cac uoc cua n la %d\n",m);
     p=p+m;}
	}
printf("Tong so uoc cua n=%d",p);
}

