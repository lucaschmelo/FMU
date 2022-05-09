#include <stdio.h>
#include <math.h>

float fahrenheit, celsius;

int main(){

printf("\nDigite a temperatura em Fahrenheit: \n");
scanf("%f", &fahrenheit);

celsius = (fahrenheit -32) * 5 / 9;

printf("\nA temperatura em Fahrenheit %.1f transformada em graus Celsius e: %.1f\n", fahrenheit, celsius);

return 0;
}