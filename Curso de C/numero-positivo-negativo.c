#include <stdio.h>
#include <stdlib.h>

float num;

int main (){

  printf ("\nDIGITE UM NUMERO:\n");
  scanf ("%f", &num);
  
  if (num >=0)
    {
      printf ("\nNUMERO POSITIVO!!!");
        
    }
      else {
    printf ("\nNUMERO NEGATIVO!!!");
          
      }

  return 0;
}