#include<stdio.h>
int main(){
	int num;
	printf("Nhap num=");
	scanf("%d",&num);
	if (num==0){
		printf("%d bang 0",num);
		}else{
			if(num>0){printf("%d la so duong",num);}
			else{printf("%d la so am",num);
			}
			}

}
