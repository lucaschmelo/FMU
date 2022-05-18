#include <stdio.h> 

int i, n;

int main (){

    printf ("Digite um numero para multiplicar:\n");
    scanf ("%d", &n);

for (i=0;i<11;i++){

    printf ("\n%d x %d = %d\n",i, n, i*n);
}
    return 0; 
}