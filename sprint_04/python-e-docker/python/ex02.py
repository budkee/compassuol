"""
    Utilizando high order functions, implemente o corpo da função conta_vogais. O parâmetro de entrada será uma string e o resultado deverá ser a contagem de vogais presentes em seu conteúdo.

    É obrigatório aplicar as seguintes funções:

    len

    filter

    lambda

    Desconsidere os caracteres acentuados. Eles não serão utilizados nos testes do seu código.

"""
# Declaração da função
def conta_vogais(texto:str)-> int:
    ## Verifica se é uma vogal
    eh_vogal = lambda carac: carac.lower() in 'aeiou'    

    ## Filtra as vogais
    vogais = filter(eh_vogal, texto)

    ## Contagem do número de vogais
    contagem = len(list(vogais))
    return contagem


# Início
if __name__ == "__main__":
    pass
# Fim