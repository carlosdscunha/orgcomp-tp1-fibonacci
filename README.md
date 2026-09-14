
# Fibonacci em Essembly x86-64 
Grupo de Trabalho - Disciplina de Organização de Computadores

## A sequência de Fibonacci
Cada número é a soma dos seus dois antecessores:

$$1 \quad 1 \quad 2 \quad 3 \quad 5 \quad 8 \quad 13 \quad 21 \quad 34$$

$$
\begin{array}{lllllllll}
0 + 1 = & 1 \\
 & 1 + 1 = & 2 \\
 & & 1 + 2 = & 3 \\
 & & & 2 + 3 = & 5 \\
 & & & & 3 + 5 = & 8 \\
 & & & & & 5 + 8 = & 13 \\
 & & & & & & 8 + 13 = & 21 \\
 & & & & & & & 13 + 21 = & 34
\end{array}
$$

## Uso Tool Chain
Script de automação de bash que faz realizar **Compilação** ou **Montagem**, **Linkedição** via **YASM** e abrir o depurador do **GDB**, ajustar automaticamente os layouts. Exemplos a seguir:

- Verificar comando nome do arquivo sem formato, se não sem nome para cancelar **antes de compilar**;
- Verificar se existe **arquivo de assembly** (`.asm`) entrada;
- **Compilação** arquivo de objeto e lista (se não manter `-l excluir`)  via **YASM** com `flag -g` para ativar depuração;
- Verificar se erros pós compilação, não foi gerado arquivo de lista para cancelar de executável ;
- Gerar um arquivo executável;
- Limpar os arquivos mortos no disco ou armazenamento;
- Depuração via **GDB** para abrir com `flags` para ajustar `layouts` e `break point` automático;
