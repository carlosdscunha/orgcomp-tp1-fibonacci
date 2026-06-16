def fibonacci(n):
    if n == 0:
        return 0

    if n == 1:
        return 1

    anterior = 0
    atual = 1

    for i in range(2, n + 1):
        proximo = anterior + atual
        anterior = atual
        atual = proximo

    return atual


N = 10
resultado = fibonacci(N)

print("N =", N)
print("Fibonacci =", resultado)
