#include<stdio.h>
int main(){
	int k=0;
	int m=0;
	int n;
	printf("Nhap so mang n=");
	scanf("%d",&n);
	int ary[n];
	for(int i=0;i<n;i++){
		scanf("%d",&ary[i]);
	}
	for(int i=0;i<n;i++){
		if(ary[i]>0){
		    m++;
			if(k<m){
				k=m;
			}
		}
			else
			m=0;
}
	printf("So luong cac so duong lien tiep nhieu nhat la %d",k);
}
