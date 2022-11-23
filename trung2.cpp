#include<iostream>
#include<stdio.h>
#include<stdlib.h>
using namespace std;
int main(){
	int k=0;
	int m=0;
	int n;
	printf("Nhap so mang n=");
	scanf("%d",&n);
	int arr[n];
	for(int i=0;i<n;i++){
		printf("arr[%d]=",i);
		scanf("%d",&arr[i]);
	}
	int trunggian;
    for(int i = 0; i < n - 1; i++){
        for(int j = i + 1; j < n; j ++){
            if(arr[i] > arr[j]){
                trunggian = arr[i];
                arr[i] = arr[j];
                arr[j] = trunggian;
            }
        }
    }
    
    cout << ("MANG SAU KHI SAP XEP TANG DAN")<<endl;
    for(int i = 0; i < n; i++){
        cout << ("%d", arr[i])<<endl;
    }
}

	
