#include <stdio.h>

void ler_matriz(int tam, int matriz[tam][tam], int numero_matriz) {
    printf("--- Preenchimento da Matriz %d ---\n", numero_matriz);
    for (int i = 0; i < tam; i++) {
        for (int j = 0; j < tam; j++) {
            int valido = 0;
            while (!valido) {
                printf("Digite o elemento [%d][%d]: ", i + 1, j + 1);
                if (scanf("%d", &matriz[i][j]) == 1) {
                    valido = 1;
                } else {
                    printf("Erro: Entrada invalida! Digite apenas numeros inteiros.\n");
                    while (getchar() != '\n'); 
                }
            }
        }
    }
    printf("\n");
}


void gerar_matriz_maiores(int tam, int m1[tam][tam], int m2[tam][tam], int resultado[tam][tam]) {
    for (int i = 0; i < tam; i++) {
        for (int j = 0; j < tam; j++) {
            if (m1[i][j] > m2[i][j]) {
                resultado[i][j] = m1[i][j];
            } else {
                resultado[i][j] = m2[i][j];
            }
        }
    }
}

void imprimir_matriz(int tam, int matriz[tam][tam]) {
    for (int i = 0; i < tam; i++) {
        for (int j = 0; j < tam; j++) {
            printf("%4d ", matriz[i][j]);
        }
        printf("\n");
    }
}

int main(void) {
    const int TAM = 5;

    int matriz1[TAM][TAM];
    int matriz2[TAM][TAM];
    int matriz_resultado[TAM][TAM];

    printf("=== PROGRAMA DE COMPARACAO DE MATRIZES (%dx%d) ===\n\n", TAM, TAM);

    ler_matriz(TAM, matriz1, 1);
    ler_matriz(TAM, matriz2, 2);

    gerar_matriz_maiores(TAM, matriz1, matriz2, matriz_resultado);

    printf("--- Matriz Resultante (Maiores Valores) ---\n");
    imprimir_matriz(TAM, matriz_resultado);

    return 0;
}