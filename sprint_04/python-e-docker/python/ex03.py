"""
    A função calcula_saldo recebe uma lista de tuplas, correspondendo a um conjunto de lançamentos bancários. Cada lançamento é composto pelo seu valor (sempre positivo) e pelo seu tipo (C - crédito ou D - débito). 

Abaixo apresentando uma possível entrada para a função.

lancamentos = [
    (200,'D'),
    (300,'C'),
    (100,'C')
]

A partir dos lançamentos, a função deve calcular o valor final, somando créditos e subtraindo débitos. Na lista anterior, por exemplo, teríamos como resultado final 200.

Além de utilizar lambdas, você deverá aplicar, obrigatoriamente, as seguintes funções na resolução:

    reduce (módulo functools)

    map
"""
# Imports
from functools import reduce

# Declaração da função
def calcula_saldo(lancamentos) -> float:

    ## Verifica se o lançamento é Credito ou Débito
    valor_lancamento = lambda l: l[0] if l[1] == 'C' else -l[0]
    
    ## Calcula os valores dos lançamentos
    valores = map(valor_lancamento, lancamentos)

    ## Calcula o saldo 
    valor_final = reduce(lambda x, y: x + y, valores)

    return valor_final


# Início
if __name__ == "__main__":
    
    lancamentos = [
        (200,'D'),
        (300,'C'),
        (100,'C')
    ]

    valor_final = calcula_saldo(lancamentos)

    print(valor_final)


# Fim