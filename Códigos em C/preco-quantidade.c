#include<stdlib.h>
#include<stdio.h>

int quantidade;
float preco;

int main(){
    printf("Quantas macas foram compradas?\n");
    scanf("%d", &quantidade);

        if(quantidade>=12){
            preco=quantidade*1.00;
        }
        else{
            preco=quantidade*1.30;
        }
    printf("\nValor total da compra R$: %.2f\n", preco);   
return 0;        
}