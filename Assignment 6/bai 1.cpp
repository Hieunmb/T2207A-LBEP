#include<stdio.h>
int main(){
	int n;
	int s,m;
	printf("Nhap tong so mang n=");
	scanf("%d",&n);
	s=m=0;
	int ary[n];
	for(int i=0;i<n;i++){
		scanf("%d",&ary[i]);
	}
	for(int i=0;i<n;i++){
		if(ary[i]%2==1);
		 s=s+ary[i];
	     m=m+1;
	}
	printf("Trung binh cong cac so le la %d",s/m);
}
