#include <stdio.h>

int main(){

int idade, tempo;

printf("informe sua idade: ");

scanf("%d", &idade);

printf("informe o tempo de servico: ");

scanf("%d", &tempo);

if((idade >= 65) || (tempo >= 30) || (idade >= 60 && tempo >= 25))

{
printf("Voce pode se aposentar!");
}

else

{
printf("Voce nao pode se aposentar!");
}

return 0;
}