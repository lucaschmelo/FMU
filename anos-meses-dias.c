#include <stdio.h>

int main() {

int entrada,anos,meses,dias;

printf("Digite a sua idade em dias para converter em anos, meses e dias: \n");
scanf("%d",&entrada);

anos=entrada/365;

meses=(entrada%365)/30;

dias=(entrada%365)%30;

printf("%d ano(s)\n%d mes(es)\n%d dia(s)\n",anos,meses,dias);

return 0;

}