"""
Verifique se cada uma das palavras da lista ['maça', 'arara', 'audio', 'radio', 'radar', 'moto'] é ou não um palíndromo.

Obs: Palíndromo é uma palavra que permanece igual se lida de traz pra frente.

É necessário que você imprima no console exatamente assim:


A palavra: maça não é um palíndromo
 
A palavra: arara é um palíndromo
 
A palavra: audio não é um palíndromo
 
A palavra: radio não é um palíndromo
 
A palavra: radar é um palíndromo
 
A palavra: moto não é um palíndromo

"""

# Início
# Entrada das variáveis
palavras = ['maça', 'arara', 'audio', 'radio', 'radar', 'moto']

# Compute se a palavra é ou não um palíndromo
for palavra in palavras:
    
    inversa = ''

    for letra in palavra:
        inversa = letra + inversa

    if palavra != inversa:
        resultado = 'não é um palíndromo.'
    else:
        resultado = 'é um palíndromo.'
            
# Imprima o resultado
    print("A palavra: {} {}\n".format(palavra, resultado))

# Fim