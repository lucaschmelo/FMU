#include<stdio.h>

int qtd_atual, qtd_maxima, qtd_minima;
float qtd_media;

int main(){

    printf("\nDigite aqui a quantidade atual do produto em estoque:\n");
    scanf("%d", &qtd_atual);
    printf("\nDigite aqui a quantidade minima do produto em estoque:\n");
    scanf("%d", &qtd_minima);
    printf("\nDigite aqui a quantidade maxima do produto em estoque:\n");
    scanf("%d", &qtd_maxima);

qtd_media=(qtd_minima+qtd_maxima)/2;

    if (qtd_atual>=qtd_media){
        printf("\nNao efetuar compra.\n");
    }
    else{
        printf("\nEfetuar compra.\n");
    }

return 0;
}