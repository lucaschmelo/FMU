#include <stdio.h>

int idade;
float altura;

int main () {

    printf("Digite sua idade\n"); //Imprime uma frase
    scanf("%d",&idade); //Receber o dado do usuário e armazenar na RAM

    printf("Digite sua altura\n"); //Imprime uma frase
    scanf("%f",&altura); //Receber o dado do usuário e armazenar na RAM

    printf("\nIdade: %d, altura: %.2f\n",idade, altura); //Qualquer separação numérica tem que ser com . e não , -- ex: 1.80 e não 1,80 -- .2f ou .1f é a quantidade de números após o .
    
    return 0;

}
