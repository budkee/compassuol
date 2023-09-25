"""
Considere as duas listas abaixo:

a = [1, 1, 2, 3, 5, 8, 14, 21, 34, 55, 89]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

Escreva um programa para avaliar o que ambas as listas têm em comum (sem repetições), imprimindo a lista de valores da interseção na saída padrão.

Importante:  Esperamos que você utilize o construtor set() em seu código.
"""

# Início
# Declaração das variáveis
a = [1, 1, 2, 3, 5, 8, 14, 21, 34, 55, 89]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

set_a = set(a)
set_b = set(b)

# Compute a intersecção das listas
interseccao = set_a.intersection(set_b)

# Imprima como lista
lista = []
for _ in interseccao:
    lista.append(_)
print(lista)
# Fim


# Tentativa 2
"""
for elemento in a:
    for elemento in b:
        c.append(elemento)

print(c)
"""
# Tentativa 1
"""
for _ in set(a):
    for _ in set(b):
        if a[i] == b[j] and a[i] != b[j] and c[i]:
            c.append(a[i])
            # Imprima o resultado
            print(c)

"""

# Fim