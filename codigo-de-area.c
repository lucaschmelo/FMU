#include <stdio.h>

int main(){
int ddd;

printf("\nDigite o codigo de area para descobrir o distrito:\n");
scanf("%d",&ddd);

if (ddd==61)
    printf("\nBrasilia\n");
        else if (ddd==71)
            printf("\nSalvador\n");
        else if (ddd==11)
            printf("\nSao Paulo\n");
        else if (ddd==21)
            printf("\nRio de Janeiro\n");
        else if (ddd==32)
            printf("\nJuiz de Fora\n");
        else if (ddd==19)
            printf("\nCampinas\n");
        else if (ddd==27)
            printf("\nVitoria\n");
        else if (ddd==31)
            printf("\nBelo Horizonte\n");
else
    printf("\nDDD nao cadastrado\n");

return 0;
}