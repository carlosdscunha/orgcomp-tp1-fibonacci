#include <stdio.h>

int main() {
    // Definir os valores iniciais
    int a = 0; // F₀ = 0
    int b = 1; // F₁ = 1 
    int valor = 0;
    
    int seq = 0; // números da sequência
    while (seq <= 10) { // laço ou loop e 10 < 10 para terminar
        valor = a + b; // soma
        printf("%d + %d = %d\n", a, b, valor); // ( a + b = valor )
        a = b;
        b = valor;
        seq++; // incremento ( seq = seq + 1 )
    }

    return 0; // Fechar programa
}