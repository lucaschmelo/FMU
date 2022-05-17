#include <stdio.h>
#include <math.h>

int main() {
float a,b,c,x1,x2,delta,x;

 printf("Insira o coeficiente A: \n");
 scanf("%f",&a);
 printf("Insira o coeficiente B: \n");
 scanf("%f",&b);
 printf("Insira o coeficiente C: \n");
 scanf("%f",&c);

  delta=((b*b)-(4*(a*c)));

  printf("\n");

  if ((delta < 0) || (a == 0))
     printf("Nao existem resultados reais\n");

  if ((delta == 0) && (a != 0)) {
     x = -b / (2 * a);
     printf("Existe apenas uma raiz real: x1 e x2 = %.5f\n", x);
  }

  if ((delta > 0) && (a != 0)) {
     x1 = (-b + sqrt(delta)) / (2 * a);
     x2 = (-b - sqrt(delta)) / (2 * a);
     printf("Existem duas raizes reais, x1 = %.5f e x2 = %.5f\n",x1,x2);
  }
return 0;
}