#include<stdio.h>
int main(){
	float s=0;// gan gia tri cho tong s
	int n;
	printf("Nhap so n=");
	scanf("%d",&n);//Nhap n
	bool f=false;//dat gia tri boolean
	if (n>0){
		f=true;//neu n nhap vao lon hon 0 se tiep tuc chay chuong trinh va gan gia tri f=true
	for(float i=1;i<=n;i++){
		s=s+1/i;//cong thuc vong lap de ra gia tri ket qua cua s
	}
	}
	else{
		f=false;//neu n be hon 0 thi  se gan gia tri f =false 
	}
	if(f==true){
	printf("Tong S=%f",s);//khi f==true se printf ra ket qua tren man hinh
}
else{//khi f==false thì se báo loi
	printf("ERROR");
}
}
