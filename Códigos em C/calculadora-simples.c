#include<stdio.h>

float num1,num2;
char op;

int main(){

printf ("Digite o numero 1:\n"); 
scanf ("%f",&num1);
printf ("\nDigite o operador: + - * /\n"); 
scanf (" %c",&op);
printf ("\nDigite o numero 2:\n"); 
scanf ("%f",&num2);

switch (op){

case '+':
printf("\nO resultado da soma e: %.2f\n\n",num1+num2);
break;
case '-':
printf("\nO resultado da subtração e: %.2f\n\n",num1-num2);
break;
case '*':
printf("\nO resultado da multiplicação e: %.2f\n\n",num1*num2);
break;
case '/':
if(num2!=0)
printf("\nO resultado da divisão e: %.2f\n\n",num1/num2);
else
printf("\nNao existe divisao por 0\n\n");
break;
default:
printf("\nOperador invalido\n\n");
} //switch

return 0;
}
