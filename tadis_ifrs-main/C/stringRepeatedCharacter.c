#include <stdio.h>

void ler_string(int tam, char str[]) {
    printf("Digite o texto ou frase: ");
    if (fgets(str, tam, stdin) == NULL) {
        printf("Erro: Falha na leitura do texto.\n");
        str[0] = '\0';
    }
}

char ler_caractere(int ordem) {
    char c;
    printf("Digite o %d-o caractere: ", ordem);
    
    while (scanf(" %c", &c) != 1) {
        printf("Erro: Entrada invalida. Digite um caractere valido: ");
        while (getchar() != '\n'); 
    }
    while (getchar() != '\n'); 
    
    return c;
}


int contar_par_caracteres(const char str[], char c1, char c2) {
    int contador = 0;

    for (int i = 0; str[i] != '\0' && str[i + 1] != '\0'; i++) {
        if ((str[i] == c1 && str[i + 1] == c2) || (str[i] == c2 && str[i + 1] == c1)) {
            contador++;
        }
    }

    return contador;
}

int main(void) {
    const int TAM = 250;
    char texto[250];

    printf("=== PROGRAMA DE CONTAGEM DE PARES DE CARACTERES ===\n\n");

    ler_string(TAM, texto);

    char c1 = ler_caractere(1);
    char c2 = ler_caractere(2);

    int quantidade = contar_par_caracteres(texto, c1, c2);

    printf("\n--- Resultado ---\n");
    printf("Caracteres informados: '%c' e '%c'\n", c1, c2);
    printf("Quantidade de vezes encontrados juntos: %d\n", quantidade);

    return 0;
}