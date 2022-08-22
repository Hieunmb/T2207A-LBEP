#include<stdio.h>
#include<string.h>
int main(){
	char str1[100];
	printf("Nhap chuoi:");
	scanf("%s",str1);
    for(int i=0;i<strlen(str1);i++){
    	if(str1[i]>=97&&str1[i]<=122){
    		str1[i]-=32;
		}
	}
	printf("Chuoi sau khi bien doi:%s",str1);
}
