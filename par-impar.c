#include<stdio.h>

int num;

int main(){

    printf("Digite um numero\n");
    scanf("%d", &num);
        
        if(num%2==0){
            printf("\nO numero %d e par\n", num);
        }
        else{
            printf("\nO numero %d e impar\n", num);
        }

return 0;
}