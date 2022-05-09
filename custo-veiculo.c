#include <stdio.h>

float custo,percentual_dist,percentual_tax,ano,motor,valor; 
char fabricante[16],modelo[16],combustivel[16];

int main(){

//comandos de entrada

printf ("\nDigite o fabricante do veiculo:\n");
scanf (" %[^\n]",&fabricante); 

printf ("\nDigite o modelo do veiculo:\n");
scanf (" %[^\n]",&modelo); 

printf ("\nDigite o ano do veiculo:\n");
scanf ("%f",&ano);

printf ("\nDigite o tipo do motor:\n");
scanf ("%f",&motor);

printf ("\nDigite o tipo de combustivel:\n");
scanf (" %[^\n]",&combustivel); 

printf ("\nDigite o custo de fabricacao:\n");
scanf ("%f",&custo);

percentual_dist=custo*0.28;
percentual_tax=custo*0.45;
valor=custo+percentual_dist+percentual_tax;

//comandos de saida

//imprimir o que o usuario digitou
printf ("\nValor referente a porcentagem da concessionaria R$: %.2f\n", percentual_dist);
printf ("\nValor referente a porcentagem do imposto R$: %.2f\n", percentual_tax);
printf ("\nO valor que voce pagara no seu novo veiculo sera R$: %.2f\n",valor);

return 0;

}