#include<stdio.h>
#include<math.h>
int main(){
	int a;
	printf("Nhap a=");
	scanf("%d",&a);
	int b;
	printf("Nhap b=");
	scanf("%d",&b);
	int c;
	printf("Nhap c=");
	scanf("%d,",&c);
	if (a+b>c&&b+c>a&&c+a>b){
		float p=(a+b+c)/2;
		int e=2*p;
		float s=sqrt(p*(p-a)*(p-b)*(p-c));
		printf("Tam giac co chu vi la %d ",e);
		printf("Tam giac co dien tich la %f",s);
}else{printf("Day khong phai tam giac");
}
	}
	
