#include <stdio.h>

void imprimir_exclamacoes(int n) {
    if (n <= 0) {
        printf("Digite um valor positivo.");
        return;
    }

    for (int i = 1; i <= n; i++) {
        for (int j = 0; j < i; j++) {
            printf("!");
        }
        printf("\n");
    }
}

int main(void) {
    int n;

    printf("Digite a quantidade de linhas: ");
    scanf("%d", &n);

    imprimir_exclamacoes(n);

    return 0;
}