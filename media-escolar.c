#include <stdio.h>
#include <stdlib.h>

int main()
{
  float nota1, nota2, media;
  
  printf("Digite a primeira nota do aluno: ");
  scanf("%f",&nota1);
  
  printf("Digite a segunda nota do aluno: ");
  scanf("%f",&nota2);
    
  media = (nota1 + nota2) / 2;
  
  printf("Media do aluno = %.1f\n",media);

if (media >= 7)
     printf("Aluno aprovado!");
  else if ((media >= 6) && (media < 7))
          printf("Aluno fara recuperacao.");
       else
      printf("Aluno reprovado.");
  
  system("pause");

  return 0;
} 