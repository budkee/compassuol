"""
Calcule o valor mínimo, valor máximo, valor médio e a mediana da lista gerada na célula abaixo:

Obs.: Lembrem-se, para calcular a mediana a lista deve estar ordenada!


Use as variáveis abaixo para representar cada operação matemática:

mediana
media
valor_minimo 
valor_maximo 

Importante: Esperamos que você utilize as funções abaixo em seu código:

- random
- max
- min
- sum

"""

# Início

import random

# amostra aleatoriamente 50 números do intervalo 0...500
random_list = random.sample(range(500), 50)

# Inicialização das variáveis
mediana = 0
media = 0
valor_minimo = 0
valor_maximo = 0

# Compute 
# 1. Valor mínimo | min(lista)
valor_minimo = min(random_list)

# 2. Valor máximo | max(lista)
valor_maximo = max(random_list)

# 3. Valor médio | sum(lista)/len(lista)
valor_medio = sum(random_list)/len(random_list)

# 4. Valor mediana | Média dos dois valores centrais da ordenada crescente
ordenada = sorted(random_list)
tam = len(ordenada)

if tam % 2 == 1:
    # Caso ímpar: retorna o valor do meio
    mediana = ordenada[tam // 2]
else:
    # Caso par: retorna a média dos valores centrais
    valor_central_1 = tam // 2 - 1
    valor_central_2 = tam // 2
    mediana = (ordenada[valor_central_1] + ordenada[valor_central_2]) / 2


# Imprima o resultado
print("Media: {}, Mediana: {}, Mínimo: {}, Máximo: {}".format(valor_medio, mediana, valor_minimo, valor_maximo))


# Fim