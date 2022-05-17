#include<stdio.h>
#include<ctype.h>

char letra;

int main(){
    printf ("Digite uma letra minuscula\n");
    scanf (" %c", &letra);

    letra=tolower (letra); //comando para requerir letra minuscula
    if (isalpha(letra)){
        switch(letra){
            case 'a':
                case 'e':
                    case 'i':
                        case 'o':
                            case 'u':
                                printf ("A letra %c e uma vogal\n",letra);
                                break;
            default:
                printf ("A letra %c e uma consoante",letra);
        }//fim do switch
    }//fim do if
    else
    printf ("Nao e uma letra\n");
    return 0;
}