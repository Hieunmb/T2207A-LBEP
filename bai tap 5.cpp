#include<stdio.h>
int main(){
	int a;
	printf("Nhap a=");
	scanf("%d",&a);
	int b;
	printf("Nhap b=");
	scanf("%d",&b);
	int c;
	printf("Nhap c=");
	scanf("%d",&c);
	if(a>b&c){printf("So lon nhat la %d",a);
	}else{
		if(b>c){printf("So lon nhat la %d",b);
	}	else {printf("So lon nhat la %d",c);
		}
	}
}

