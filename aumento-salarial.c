#include <stdio.h>

float sal_atual,sal_promo; 
char nome [61];

int main(){

//comandos de entrada

//nome
printf ("\nDigite seu nome:\n");
scanf (" %[^\n]",&nome); 

//salario
printf ("\nDigite seu salario atual:\n");
scanf ("%f",&sal_atual);

sal_promo=sal_atual+(sal_atual*0.25);

//comandos de saida

//imprimir o que o usuario digitou
printf ("\n%s, voce recebeu um aumento!\n\nAgora seu salario e: %.2f \n" ,nome, sal_promo);

return 0;

}