#include<stdio.h>
#include<stdlib.h>
int main(){
	int j=0;
	int k=0;
	int m=0;
	int n;
	printf("Nhap so mang n=");
	scanf("%d",&n);
	int x;
	printf("Nhap so x=");
	scanf("%d",&x);
	int arr[n];
	for(int i=0;i<n;i++){
		scanf("%d",&arr[i]);
	}
	int p=0;
	for(int i=0;i<n;i++){
		p=abs(arr[i]-x);
		if(p>k){
		    k=p;}
		}
		for(int i=0;i<n;i++){
				p=abs(arr[i]-x);
			if(p<k){
				k=p;
				m=i;
			}
		}
	printf("So gan nhat la %d",arr[m]);
}
