#include<stdio.h>

int n,i;

int main(){

    printf("Digite um numero positivo para a contagem regressiva:\n");
    scanf("%d", &n);

if(n>0){
    for(i=n;i>=0;i--){
     printf ("\n%d\n",i);
}
}
else
    printf("O numero digitado nao e um numero positivo, tente novamente\n");

return 0; 
}
