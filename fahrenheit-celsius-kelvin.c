#include <stdio.h>

int f;
float c,k;

int main(){

    for (f=50;f<=65;f++){
        printf("....................................\n");
        printf("Farenheit = %d",f);

        c=0.56*(f-32);
        k=c+273.15;

        printf("\nConvertido para celsius = %.2f",c);
        printf("\nConvertido para kelvin = %.2f\n",k);
    }
    printf("\n");

    return 0;
}