#include<stdio.h>
#include<math.h>
int chuVi(int a,int b,int c){
	int d=a+b+c;
	return d;
}
int dienTich(int a,int b,int c){
	int d=(a+b+c)/2;
	float e=sqrt(d*(d-a)*(d-b)*(d-c));
	return e;
}
int tongChuSo(int a){
	int b=0;
	int c=0;
	for(b=0;a!=0;a/=10){
		b=a%10;
		c=c+b;
	}
	return c;
}
int UCLN(int a,int b){
	while(a!=b){
		if(a>b){
			a-=b;
		}
		else{
			b-=a;
		}
	}
	return a;
}
int BCNN(int a,int b){
	 while (a<=0|| b<=0);
           int  x=a;
           int  y=b;
           int z=x*y/UCLN(a,b);
       }
       int main(){
       	int a,b,c;
       	printf ("Nhap ba canh cua tam giac=");
       	scanf("%d",&a);
       	scanf("%d",&b);
       	scanf("%d",&c);
       	int chuvi=chuVi(a,b,c);
       	float dt=dienTich(a,b,c);
       	int n;
       	printf("Nhap so n=");
       	scanf("%d",&n);
       	int x,y;
       	printf("Nhap 2 so=");
       	scanf("%d",&x);
       	scanf("%d",&y);
       	int tong=tongChuSo(n);
       	int ucln=UCLN(x,y);
       	int bcnn=BCNN(x,y);
        if(a<b+c&&b<a+c&&c<a+b){
       	printf("Chu vi tam giac la %d\n",chuvi);
       	printf("Dien tich tam giac la %f\n",dt);}
       	else{printf("Day khong phai tam giac\n");
		   }
       	printf("Tong chu so cua n la %d\n",tong);
       	printf("Uoc chung lon nhat cua 2 so la %d\n",ucln);
       	printf("Boi chung nho nhat cua 2 so la %d\n",bcnn);
	   }
