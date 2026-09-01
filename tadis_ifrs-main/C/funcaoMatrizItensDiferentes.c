#include <stdio.h>

void ler_vetor(int tam, int vetor[tam]) {
    int i = 0;
    while (i < tam) {
        int num;
        printf("Digite o %d Elemento do vetor, que ocupara a posicao %d: ", i + 1, 0);

        if (scanf("%d", &num) != 1) {
            printf("Erro: Entrada invalida! Digite apenas numeros inteiros.\n");
            while (getchar() != '\n');
            continue;
        }

        int existe = 0;
        for (int j = 0; j < i; j++) {
            if (vetor[j] == num) {
                existe = 1;
                break;
            }
        }

        if (existe) {
            printf("Erro: O numero %d ja foi digitado anteriormente. Por favor, digite outro numero!\n", num);
        } else {
            vetor[i] = num;
            i++;
        }
    }
}


void imprimir_vetor(int tam, int vetor[tam]) {
    printf("Vetor resultante: [ ");
    for (int i = 0; i < tam; i++) {
        printf("%d ", vetor[i]);
    }
    printf("]\n");
}

int main(void) {
    const int TAM = 10;
    int vetor[TAM];

    printf("=== PROGRAMA DE LEITURA DE NUMEROS UNICOS (%d ELEMENTOS) ===\n\n", TAM);

    ler_vetor(TAM, vetor);

    printf("\n--- Exibicao do Vetor Final ---\n");
    imprimir_vetor(TAM, vetor);

    return 0;
}