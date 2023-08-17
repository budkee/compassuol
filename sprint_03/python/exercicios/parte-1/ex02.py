"""
Escreva um código Python para verificar se três números digitados na entrada padrão são pares ou ímpares. 

Para cada número, imprima como saída `Par:` ou `Ímpar:` e o número correspondente (um linha para cada número lido).

Importante: Aplique a função range() em seu código.
"""


# Inicio
for _ in range(3):
# Entrada das variáveis
    n = int(input())
    # Compute se é par ou impar    
    if n % 2 == 0:
        # Imprima o resultado
        print('Par: ', n)
    else:
        print('Ímpar: ', n)

# Fim
