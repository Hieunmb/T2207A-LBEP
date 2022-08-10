#include<stdio.h>
int main(){
int tk;
tk=4000;
int ls;
ls=8;
int n;
printf("So nam muon gui:");
scanf("%d",&n);
int y;
y=0;
while(y<n){
	int l;
l=tk*ls/100;
tk=tk+l;
y++;
}
printf("So du la %d",tk);
}

