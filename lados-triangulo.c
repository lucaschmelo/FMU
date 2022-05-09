#include <stdio.h>

float a, b, c;

int main() {

    printf("\nDigite os tres valores do triangulo em cm:\n");
    scanf("%f%f%f", &a, &b, &c);

    if(a + b > c && b + c > a && a + c > a){
    
        if(a == b && b == c)
            printf("\nOs 3 lados formam um triangulo Equilatero:\n");

        else if(a == b || b == c || a == c)
                printf("\nOs 3 lados formam um triangulo Isosceles:\n");

            else
                printf("\nOs 3 lados formam um triangulo Escaleno:\n");
    }
    else
        printf("\nOs 3 lados nao formam um trinagulo!\n");

return 0;
}