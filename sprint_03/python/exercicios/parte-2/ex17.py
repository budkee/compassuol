"""
Escreva uma função que recebe como parâmetro uma lista e retorna 3 listas: a lista recebida dividida em 3 partes iguais. Teste sua implementação com a lista abaixo

lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

"""
# Declaração de funções
def divide_lista(lista0):
    
    tam = len(lista0)

    lista1 = lista0[:tam-8] 
    lista2 = lista0[tam-8:tam-4]
    lista3 = lista0[tam-4:]
    
    return lista1, lista2, lista3

# Início
# Entrada das variáveis
lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

# Chama a função e imprime o resultado
lista_final = divide_lista(lista)

print(lista_final[0], lista_final[1], lista_final[2])
# Fim
