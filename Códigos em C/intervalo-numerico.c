#include<stdio.h>

int n;

int main(){
    printf ("Digite um numero\n");
    scanf ("%d", &n);

    switch(n){
        case -10 ... 0:
            printf ("Numero esta contido no intervalo entre -10 e 0\n");
        break; 
        case 1 ... 11:
            printf ("Numero esta contido no intervalo entre 1 e 11\n");
        break;
        case 12 ... 24:
            printf ("Numero esta contido no intervalo entre 12 e 24\n");
        break;
        case 25:
            printf ("Numero e igual a 25\n");
        break;
        default:
            printf ("Valor invalido\n"); 
    }
return 0;
}