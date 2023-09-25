"""
Escreva uma função que recebe uma string de números separados por vírgula e retorne a soma de todos eles. Depois imprima a soma dos valores.

A string deve ter valor  "1,3,4,6,10,76"

"""
# Declara função
def receba(string):
    lista = string
    separador = lista.split(',')
    numeros_str = separador
    numeros_tratados = []
        ##print(numeros_tratados)
        ##type(numeros_tratados[0])
    for i in range(len(numeros_str)):
        numeros_int = int(numeros_str[i])
        numeros_tratados.append(numeros_int)
    soma = sum(numeros_tratados)
    return soma


# Início
# Chame a função
num_str = receba("1,3,4,6,10,76")

# Imprima o resultado
print(num_str)
# Fim
