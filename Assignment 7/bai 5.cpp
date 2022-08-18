#include<stdio.h>
int main(){
	int n;
	printf("Nhap so mang n=");
	scanf("%d",&n);
	int a[n];
	bool f=false;
	for(int i=0;i<n;i++){
		printf("a[%d]=",i);
		scanf("%d",&a[i]);}
		for(int i=0;i<n;i++){
	for (int j=i+1;j<n;j++)
{
if (a[i]==a[j])
{
printf ("So ban vua nhap vao bi trung tai vi tri a[%d]\n",i);
			f=true;
		}
	}
}
if(f==false){
	printf("So nhap vao khong bi trung");
}
}
