#include<stdio.h>
int main()
{
    int ary[10];
    int i, high;
    for(i=0; i<10; i++)
    {
	 scanf("%d",&ary[i]);
    }
    high = ary[0];
    for(i=1; i<10; i++)
    {
        if(ary[i] > high)
            high = ary[i];
	}
	int high2=ary[0];
 for(int i=1;i<9;i++)
 {
 if(ary[i]>high2 && ary[i]<high) high2=ary[i];
 }
    printf("\nSo lon thu 2 la %d", max2);
}

