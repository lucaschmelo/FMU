#include <stdio.h>


float tempo, kmph, litros;  

int main()
{

    printf("\n Digite aqui quanto tempo durou sua viagem (em horas): \n");
    scanf ("%f" , &tempo);

    printf("\n Digite aqui a quantos km/h voce estava percorrendo: \n");
    scanf ("%f" , &kmph);

    litros = (kmph*tempo)/12;
    
    printf("\n Voce gastou %.3f L de gasolina \n", litros);
    

    return 0;
}