#include<stdio.h>
int main(){
	int e=0;
	int p1=0;
	int p2=0;
	int n;
	printf("Nhap mang n=");
	scanf("%d",&n);
	int ary[n];
	for(int i=0;i<n;i++){
		scanf("%d",&ary[i]);
	}
	printf("Nhap p1=");
	scanf("%d",&p1);
	printf("Nhap p2=");
	scanf("%d",&p2);
	for (int i=0;i<n;i++){
		if(ary[i]>=p1&&ary[i]<=p2){
			e++;
		}
	}			
	printf("So nhung so nam trong mang A thuoc [%d,%d] la %d",p1,p2,e);
}
