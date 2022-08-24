#include<stdio.h>
int main(){
	int n;
	printf("Nhap so mang n=");//Nhap so mang n
	scanf("%d",&n);
	int ary[n];
	for(int i=0;i<n;i++){
		scanf("%d",&ary[i]);//Nhap gia tri trong mang ary[n]
		}
		printf("Cac gia tri dao nguoc la ");//In ra man hinh "Cac gia tri dao nguoc la "  
		for(int i=n-1;i>=0;i--){//Chay vong lap bat dau tu n-1 den 0 de cho cac gia tri trong mang dao nguoc
			printf("%d ",ary[i]);	//In ra man hinh cac gia tri da dao nguoc
	}
}
	
