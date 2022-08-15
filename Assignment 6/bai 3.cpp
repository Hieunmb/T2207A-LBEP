#include<stdio.h>
int main(){
		int n;
	printf("Nhap so mang n=");
	scanf("%d",&n);
	int ary[n];
	int x;
	printf("Nhap so x=");
	scanf("%d",&x);
	for(int i=0;i<n;i++){
		scanf("%d",&ary[i]);
}
for(int i=0;i<n;i++){
	if(ary[i]==x){
		printf("%d co trong mang",x);
}
}
}
