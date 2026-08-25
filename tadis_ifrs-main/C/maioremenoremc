#include <stdio.h>

// Protótipos das funções
int determinar_maior(int x, int y, int z);
int determinar_menor(int x, int y, int z);
void verificar_iguais(int x, int y, int z);

int main() {
    int x, y, z;
    int maior, menor;

    printf("Digite 3 valores positivos: ");
    scanf("%d %d %d", &x, &y, &z);

    // Exibe mensagens de igualdade apenas uma vez
    verificar_iguais(x, y, z);

    maior = determinar_maior(x, y, z);
    menor = determinar_menor(x, y, z);

    printf("\nMaior = %d\nMenor = %d\n", maior, menor);

    return 0;
}

int determinar_maior(int x, int y, int z) {
    int maior = x;
    if (y > maior) maior = y;
    if (z > maior) maior = z;
    return maior;
}

int determinar_menor(int x, int y, int z) {
    int menor = x;
    if (y < menor) menor = y;
    if (z < menor) menor = z;
    return menor;
}

void verificar_iguais(int x, int y, int z) {
    if (x == y && y == z) {
        printf("Os tres numeros (%d) sao iguais.\n", x);
    } else {
        if (x == y) printf("%d e %d sao iguais.\n", x, y);
        if (y == z) printf("%d e %d sao iguais.\n", y, z);
        if (z == x) printf("%d e %d sao iguais.\n", z, x);
    }
}
