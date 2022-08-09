#include<stdio.h>
int main(){
int m;
int n;
int p=0;
printf("Nhap so n=");
scanf("%d",&n);
if(n<6){
	printf("So n ban vua nhap khong thoa man\n");
}
for(m=6;m<n;m+=6){
	p=m;
}
	printf("So vua chia het cho 2,3 va nho hon n la %d \n",p);
}
