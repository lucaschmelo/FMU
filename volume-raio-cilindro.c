#include<stdio.h>
#define PI 3.141592

int n;
float alt,raio,vol;

int main(){

    for(n=1;n<=5;n++){
        printf("Digite a altura seguido do raio do seu cilindro:\n");
        scanf("%f%f",&alt,&raio);

        vol=PI*raio*raio*alt;

        printf("\nAltura: %.2f | Raio: %.2f | Volume: %.2f\n",alt,raio,vol);
        printf("......................................................");
        printf("\n\n");
    }

return 0;
}