#include<stdio.h>

int main(){
 
 float salario;

 printf ("Digite seu salario atual para calcular o aumento: \n");
 scanf("%f", &salario);

 if (salario <= 400.0)
 printf("O salario com o reajuste vai para: %.2f\nValor do reajuste: %.2f\nVoce obteve aumento salarial de: 15 %%\n", salario * 1.15, salario * 1.15 - salario);

 else if (salario <= 800.0)
 printf("O salario com o reajuste vai para: %.2f\nValor do reajuste: %.2f\nVoce obteve aumento salarial de: 12 %%\n", salario * 1.12, salario * 1.12 - salario);

 else if (salario <= 1200.0)
 printf("O salario com o reajuste vai para: %.2f\nValor do reajuste: %.2f\nVoce obteve aumento salarial de: 10 %%\n", salario * 1.10, salario * 1.10 - salario);

 else if (salario <= 2000.0)
 printf("O salario com o reajuste vai para: %.2f\nValor do reajuste: %.2f\nVoce obteve aumento salarial de: 7 %%\n", salario * 1.07, salario * 1.07 - salario);

 else
 printf("O salario com o reajuste vai para: %.2f\nValor do reajuste: %.2f\nVoce obteve aumento salarial de: 4 %%\n", salario * 1.04, salario * 1.04 - salario);
 
 return 0;
}