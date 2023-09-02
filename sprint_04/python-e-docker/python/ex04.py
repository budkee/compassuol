"""
    A função calcular_valor_maximo deve receber dois parâmetros, chamados de operadores e operandos. Em operadores, espera-se uma lista de caracteres que representam as operações matemáticas suportadas (+, -, /, *, %), as quais devem ser aplicadas à lista de operadores nas respectivas posições. Após aplicar cada operação ao respectivo par de operandos, a função deverá retornar o maior valor dentre eles.


Veja o exemplo:

Entrada

    operadores = ['+','-','*','/','+']
    operandos  = [(3,6), (-7,4.9), (8,-8), (10,2), (8,4)]


Aplicar as operações aos pares de operandos

    [ 3+6 , -7-4.9, 8*-8 , 10/2 , 8+4 ] 


Obter o maior dos valores

    12


Na resolução da atividade você deverá aplicar as seguintes funções:

    max

    zip

    map
"""

# Declaração da função
#def calcular_valor_maximo(operadores,operandos) -> float:

operadores = ['+','-','*','/','+']
operandos  = [(3,6), (-7,4.9), (8,-8), (10,2), (8,4)]

# 1. Aplicar a operação com os operandos usando zip
equacao = zip(operandos[0][0], operadores, operandos[0][1])

resultados = list(map(lambda sinal, val:  val[0][0] + val[0][1] if sinal == '+' else val[0][0] - val[0][1] if sinal == '-' else val[0][0] * val[0][1] if sinal == '*' else val[0][0] / val[0][1] if sinal == '/' else val[0][0] % val[0][1], list(zip(equacao))))

print(list(resultados))

# 2. Calcular e retornar o maior valor entre eles 
maximo = max(resultados)
print(maximo)

 #   return maximo

# Inicio
"""
if __name__ == "__main__":


    maximo = calcular_valor_maximo(operadores, operandos)
    print(maximo)
"""