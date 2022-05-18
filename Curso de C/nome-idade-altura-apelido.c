#include<stdio.h>

int idade;
float altura;
char genero,nome [61],apelido [41];

int main(){

//comandos de entrada

//idade
printf("\nDigite a sua idade\n");
scanf("%d",&idade);

//altura
printf("\nDigite a sua altura\n");
scanf("%f",&altura);

//genero
printf("\nDigite o seu genero\n");
scanf(" %c",&genero);

//nome
printf("\nDigite o seu nome\n");
scanf(" %[^\n]",&nome);

//apelido
printf("\nDigite o seu apelido\n");
scanf("%s",&apelido);

//comandos de saida

//imprimir o que o usuario digitou
printf ("\n***************CADASTRO***************\n");
printf ("\nnome: %s, idade: %d, altura: %.2f, genero: %c, apelido: %s\n",nome,idade,altura,genero,apelido);

return 0;
}
