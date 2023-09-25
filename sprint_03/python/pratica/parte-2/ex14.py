"""

Escreva uma função que recebe um número variável de parâmetros não nomeados e um número variado de parâmetros nomeados e imprime o valor de cada parâmetro recebido.

Teste sua função com os seguintes parâmetros:

(1, 3, 4, 'hello', parametro_nomeado='alguma coisa', x=20)

"""

# Declaraçao das funções

def leitura_parametros(*args, **kwargs):
    retorno = []
    # Parâmetros não nomeados (posicionais)
    for parametro in args:
        retorno.append(parametro)
    # Parâmetros nomeados (chave-valor)
    for chave, valor in kwargs.items():
        retorno.append(valor)

    return retorno

# Início

# Chame a função com os parâmetros
parametros = leitura_parametros(1, 3, 4, 'hello', parametro_nomeado='alguma coisa', x=20)
# Imprima por linha
for _ in range(len(parametros)):
    print(parametros[_])

# Fim