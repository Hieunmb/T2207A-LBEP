#include<stdio.h>
int main()
{
    int ary[10];
    int i, s, high;
    for(i=0; i<10; i++)
    {
	 scanf("%d",&ary[i]);
    }
    high = ary[0];
    for(i=1; i<10; i++)
    {
        if(ary[i] > high)
            high = ary[i];}
    for(i=1;i<10;i++){
    	if(ary[i]<high)
    	s=ary[i];
	}
    printf("\nHighest value entered was %d", s);
}

