"""
Escreva uma função que recebe uma lista e retorna uma nova lista sem elementos duplicados. Utilize a lista a seguir para testar sua função.

['abc', 'abc', 'abc', '123', 'abc', '123', '123']

"""

# Função
def sem_duplicados(lista):

    nova_lista = set(lista)

    return nova_lista

# Início
# Declaração da lista
teste = ['abc', 'abc', 'abc', '123', 'abc', '123', '123']
resultado = []

# Imprima o resultado como uma lista
for _ in sem_duplicados(teste):
    resultado.append(_)    
print(resultado)
# Fim

