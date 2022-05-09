#include <stdio.h>

int main (){

int a, b, produto;


printf("Digite dois numeros para efetuar a multiplicacao\n");
printf("\n");
printf("Digite o primeiro numero\n");
scanf("%d", &a);
printf("Digite o segundo numero\n");
scanf("%d", &b);
printf("\n");

produto = a * b;

printf("PROD = %d\n", produto);

return 0;
}