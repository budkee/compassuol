"""
Dada as listas a seguir:

primeirosNomes = ['Joao', 'Douglas', 'Lucas', 'José']
sobreNomes = ['Soares', 'Souza', 'Silveira', 'Pedreira']
idades = [19, 28, 25, 31]


Faça um programa que imprima o dados na seguinte estrutura: "índice - primeiroNome sobreNome está com idade anos".



Exemplo:

0 - João Soares está com 19 anos
"""

# Início
# Declaração das listas
primeirosNomes = ['Joao', 'Douglas', 'Lucas', 'José']
sobreNomes = ['Soares', 'Souza', 'Silveira', 'Pedreira']
idades = [19, 28, 25, 31]

# Estruture os dados contendo o índice, o primeiro nome, o sobrenome e a idade

for index, nome in enumerate(primeirosNomes):
# Imprima o resultado
    print("{} - {} {} está com {} anos".format(index, nome, sobreNomes[index], idades[index]))

# Fim