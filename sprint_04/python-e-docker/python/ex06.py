# Declaração da função
def maiores_que_media(conteudo:dict)->list:
    
    # Recolhendo as chaves e os valores do conteudo
    chaves = list(conteudo.keys())
    valores = list(conteudo.values())

    # Definição da média
    soma = sum(valores)
    media = soma/len(conteudo)

    # Seleção dos maiores que a média
    maiores = [valor for valor in valores if valor > media]
    
    # Adição das chaves com seus respectivos valores em tuplas
    resultado = [(chave, valor) for chave, valor in conteudo.items() if valor in maiores]

    # Ordenação
    ordenado = sorted(resultado, key=lambda x: x[1])
    # Retorno
    return ordenado

# Início
if __name__ == '__main__':

    produtos = {
    "arroz": 4.99,
    "feijão": 3.49,
    "macarrão": 2.99,
    "leite": 3.29,
    "pão": 1.99
    }
    

    print(maiores_que_media(produtos))


