#include <stdio.h>

char nome[40], genero;
float altura, peso_ideal;

int main()
{
    printf("\nDigite seu nome:\n");
    scanf (" %[^\n]",&nome[40]);
    
    printf("\nDigite seu genero:\n");
    scanf (" %c" , &genero);
    
    printf("\nDigite sua altura:\n");
    scanf ("%f", &altura);
    
    
    if (genero == 'm'){
        
        peso_ideal = (72.7 *altura) - 58;
        
        printf ("\n Seu peso ideal e %.2f", peso_ideal);
        
    }
    else if (genero == 'f') {
        
        peso_ideal =  (62.1 *altura) - 44.7;
        
        printf ("\n Seu peso ideal e %.2f", peso_ideal);
        
    }
    

    return 0;
}