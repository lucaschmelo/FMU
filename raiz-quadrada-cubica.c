#include <stdio.h>
#include <math.h> //biblioteca com funçoes matemáticas 

float num, quad, cub, raiz_quad, raiz_cub, r; //num = n q cliente digita - ele sera colocado ao quadrado, ao cubo, raiz quadrada e raiz cubica

int main(){
    
    printf("\nDigite um numero\n");
    scanf ("%f", &num);
    
quad = pow (num,2); //calcula o num ao quadrado
cub = pow (num,3); //calcula o num ao cubo
raiz_quad= sqrt (num); //calcula a raiz quadrada
raiz_cub = cbrt (num);//calcula a raiz cubica
r = pow(num, 1.0/3.0); //calcula a raiz cubica e outras raizes. 1/3 eh o msm que raiz cubica, se fosse elevado a 4 seria 1.0/4.0

    printf("\nO numero %.1f ao quadrado e %.1f \n",num,quad);
    printf("\nO numero %.1f ao cubo e %.1f \n",num,cub);
    printf("\nA raiz quadrada do numero %.1f e %.2f \n",num,raiz_quad);
    printf("\nA raiz cubica do numero %.1f e %.2f \n",num,raiz_cub);
    
    return 0;
}