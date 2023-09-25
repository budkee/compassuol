"""
Implemente a função my_map(list, f) que recebe uma lista como primeiro argumento e uma função como segundo argumento. Esta função aplica a função recebida para cada elemento da lista recebida e retorna o resultado em uma nova lista.


Teste sua função com a lista de entrada [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] e com uma função que potência de 2 para cada elemento.

"""

# Declaraçao das funções
def my_map(lista, f):
    # Inicialização da estrutura
    resultado = []
    # Aplica a função para cada elemento
    for i in range(len(lista)):
        novo_elemento = f(lista[i])
        resultado.append(novo_elemento)

    return resultado


def potencia_2(elemento): 
    return elemento ** 2


# Início
# Entrada das variáveis
teste = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Imprima o resultado
saida = my_map(teste,potencia_2)
print(saida)

# Fim