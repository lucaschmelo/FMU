#include<stdio.h>

float valor, desconto, valorFinal;
int selecao, parcelas;

int main(){

  printf("Informe o valor da compra:\n");
  scanf("%f",&valor);


  printf("Formas de pagamento:\n");
  printf("1 - A vista\n");
  printf("2 - A prazo\n");
  printf("Selecione a forma de pagamento:\n");
  scanf("%d",&selecao);
  switch(selecao){
        case 1:
          desconto=valor*0.1;
          valorFinal=valor-desconto;
          printf("O total a pagar a vista e R$ %.2f\n",valorFinal);
       break;
       case 2:
         printf("Selecione a quantidade de parcelas\n");
         scanf("%d",&parcelas);
         printf("O valor da compra sera R$ %.2f\n",valor);
         printf("Cada parcela custara R$ %.2f",valor/parcelas);
       break;
       default:
          printf("Selecao invalida, selecione entre 1 e 2\n");
  }
 return 0;
 }