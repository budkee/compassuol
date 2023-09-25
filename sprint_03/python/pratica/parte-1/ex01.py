"""
Desenvolva um código Python que lê do teclado nome e a idade atual de uma pessoa. 
Como saída, imprima o ano em que a pessoa completará 100 anos de idade.
"""


# Incio
import datetime as dt
# Entrada das variáveis
nome = input('Nome: ')
idade = int(input('Idade: '))

# Compute o ano que a pessoa completará 100 anos
centenario = (100 - idade) + 2023


# Imprima o resultado
print(centenario)
# Fim