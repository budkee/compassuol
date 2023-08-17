"""
Dada a seguinte lista:

a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

Faça um programa que gere uma nova lista contendo apenas números ímpares.
"""

# Início
# Declaração das variáveis
a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
lista = []

# Compute uma nova lista contendo apenas os números ímpares
for _ in range(len(a)):
    if a[_] % 2 != 0:
        lista.append(a[_])
        #print(lista)
    else:
        pass

# Imprima o resultado
print(lista)
# Fim