"""
Dado o dicionário a seguir:

speed = {'jan':47, 'feb':52, 'march':47, 'April':44, 'May':52, 'June':53, 'july':54, 'Aug':44, 'Sept':54}

Crie uma lista com todos os valores (não as chaves!) e coloque numa lista de forma que não haja valores duplicados.
"""

# Início
# Declaração das variáveis
speed = {'jan':47, 'feb':52, 'march':47, 'April':44, 'May':52, 'June':53, 'july':54, 'Aug':44, 'Sept':54}

# Inicialização das variáveis
valores = set([])
valores_final = []
# (1)Crie uma lista com todos os valores das chaves e (2)remova as duplicações
# 1. Lista com os valores
valores.add(speed['jan'])
valores.add(speed['feb'])
valores.add(speed['march'])
valores.add(speed['April'])
valores.add(speed['May'])
valores.add(speed['June'])
valores.add(speed['july'])
valores.add(speed['Aug'])
valores.add(speed['Sept'])
# print(valores)

# 2.Remova as duplicações

nova_lista = []
for elemento in valores:
    if elemento not in nova_lista:
        nova_lista.append(elemento)
nova_lista.sort()
# Imprima o resultado
print(nova_lista)

# Fim