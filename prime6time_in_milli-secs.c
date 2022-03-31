#include<stdio.h>
#include<time.h>
#include<math.h>

// sieb des e (c) hhtg 16-07-2019 23h59

const int m=100000000;
int n,p,g;
double te;
int z[m+1]={0};
clock_t t;
int main()
{
  printf(">>sieb des e (c) hhtg 2019<<\n");
  printf("calculating primes until %i",m);printf(".\n");
  t=clock();g=(int)(sqrt(m)+0.5);
  for(n=2;n<=g;n++){if(z[n]==0){for(p=n*n;p<=m;p=p+n){z[p]=1;}}}
  p=0;for(n=2;n<=m;n++){if(z[n]==0){p++;}}
  te=((double)(clock()-t))/CLOCKS_PER_SEC;
  printf("number of primes  %i",p);printf(".\n");
  printf("calculated in %.8f",te);printf(" second(s).\n");
  return 0;
}