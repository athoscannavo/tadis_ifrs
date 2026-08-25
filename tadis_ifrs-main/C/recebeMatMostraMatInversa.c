#include<stdio.h>

const int TAM = 10;

void scanPrintInverseVector(){
     int vetor[TAM];

     //ler dados
     printf("Digite %d numeros inteiros:\n", TAM);
     for(int i=0; i<TAM;i++){
          printf("Digite o valor a ser armazenado na posicao %d do vetor: ", i);
          scanf("%d", &vetor[i]);
     }
     //imprimir dados
     printf("\nVetor Invertido: \n");
     for(int i= TAM - 1; i>=0; i--){
          printf("%d", vetor[i]);
     }
     printf("\n");
}

int main(){
     scanPrintInverseVector();
     return 0;
}
