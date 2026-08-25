#include<stdio.h>

//funcao lerVet
void leitura(int vet[], int tam) {
    printf("Digite os %d elementos do vetor:\n", tam);
    for (int i = 0; i < tam; i++) {
        printf("Elemento [%d]: ", i);
        scanf("%d", &vet[i]);
    }
}

//funcao buscaMenorVet
int menor(const int vet[], int tam) {
    int menorValor = vet[0]; // Assume inicialmente que o primeiro é o menor

    for (int i = 1; i < tam; i++) {
        if (vet[i] < menorValor) {
            menorValor = vet[i]; // Atualiza quando encontra um valor menor
        }
    }

    return menorValor;
}


//funcao main
int main() {
    int tamanho;

    printf("Digite a quantidade de elementos do vetor: ");
    scanf("%d", &tamanho);

    // Validação basica de entrada
    if (tamanho <= 0) {
        printf("O tamanho deve ser maior que zero.\n");
        return 1;
    }

    int vetor[tamanho]; // Vetor de tamanho definido em tempo de execução

    // Execução das funções
    leitura(vetor, tamanho);
    int menorElemento = menor(vetor, tamanho);

    printf("\nO menor valor contido no vetor eh: %d\n", menorElemento);

    return 0;
}
