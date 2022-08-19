#include<stdio.h>
int binhPhuong(int a){
	int b=a*a;
	return b;
	}
	int tinhTong(int a,int b){
		int c=a+b;
		return c;}
		int timSoLon(int a=0,int b=0){
			if(a>b){
			      return a;}
			      else{
			      	return b;}
				  }
				  int timMax(int n,int arr[]){
				  	int high=arr[0];
				  	for(int i=0;i<n;i++){
				  		if(arr[i]>high){
				  			high=arr[i];
						  }
					  }
					  return high;
				  }
				  int trungBinhCong(int n,int arr[]){
				  	int tong=0;
				  	int so=0;
				  	for(int i=0;i<n;i++){
				  		tong=tong+arr[i];
				  	   so= so+1;
					  }
					  int tbc=tong/so;
					  return tbc;
				  }
				  void thucDon(){
				  	printf("Cha ca\n");
				  	printf ("Banh my \n");
				  }
				  bool ktsoDuong(int a){
				  	if(a>0){
				  		return true;
					  }
					  else{
					  	return false;
					  }
				  }
	int main(){
		int m=15;
		int x=5;
		int mang[5]={4,1,2,5,3};
		int y=binhPhuong(x);
		int z=tinhTong(x,y);
		int k=timSoLon(x,m);
		int h=timMax(5,mang);
		float l=trungBinhCong(5,mang);
		printf("Binh phuong: %d\n",y);
		printf("Tong la: %d\n",z);
		printf("So lon hon la %d\n",k);
		printf("Trung binh cong cua mang la %f\n",l);
		printf("So lon nhat trong mang la %d\n",h);
		thucDon();
		if(ktsoDuong(x)){
			printf("X la so duong\n");
		}
		else{
			printf("X la so am\n");
		}
		}
