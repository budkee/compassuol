"""
    Utilizando lambdas e high order functions, apresente os 5 maiores valores pares e a soma destes.

Você deverá aplicar as seguintes funções no exercício:

map

filter

sorted

sum

Seu código deverá exibir na saída (simplesmente utilizando 2 comandos `print()`):

    - a lista dos 5 maiores números pares em ordem decrescente;

    - a soma destes valores.
"""


# Definição das funções


# Início 
if __name__ == "__main__":
    
    # 1. Leitura dos números
    with open('number.txt', 'r') as arquivo:
        numeros = [int(linha.strip()) for linha in arquivo] 

    ## Verifica se um número é par
    eh_par = map(lambda n: n % 2 == 0, numeros)
    
    # 2. Filtrar os números pares e ordená-los em ordem crescente
    num_pares = list(filter(eh_par, numeros))
    num_decrescente = sorted(num_pares, reverse=True)

    # 3. Os 5 maiores números pares
    top_5 = num_decrescente[:5]

    # 4. A soma dos 5 maiores números pares
    soma_5 = sum(top_5)
    
    # 5. Saída
    print(f'{top_5}\n{soma_5}\n')

# Fim
