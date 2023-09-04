"""
Um determinado sistema escolar exporta a grade de notas dos estudantes em formato CSV. Cada linha do arquivo corresponde ao nome do estudante, acompanhado de 5 notas de avaliação, no intervalo [0-10]. É o arquivo estudantes.csv de seu exercício.

Precisamos processar seu conteúdo, de modo a gerar como saída um relatório em formato textual contendo as seguintes informações:

- Nome do estudante

- Três maiores notas, em ordem decrescente

- Média das três maiores notas, com duas casas decimais de precisão

O resultado do processamento deve ser escrito na saída padrão (print), ordenado pelo nome do estudante e obedecendo ao formato descrito a seguir:

- Nome: <nome estudante> Notas: [n1, n2, n3] Média: <média>

Exemplo:

Nome: Maria Luiza Correia Notas: [7, 5, 5] Média: 5.67

Nome: Maria Mendes Notas: [7, 3, 3] Média: 4.33

Em seu desenvolvimento você deverá utilizar lambdas e as seguintes funções:

round

map

sorted

"""

# Início
if __name__ == '__main__':
    
    # Extração e Tratamento dos dados | On demand
    with open('estudantes.csv', 'r') as arquivo:
        
        # Leitura de cada estudante
        estudantes = arquivo.readlines()
        #print(estudantes)

        ## Armazenamento dos valores de cada estudante
        valores = list(map(lambda estudante: estudante.strip().split(','), estudantes))
        
        ## Separando o nome das notas
        ### Nomes
        nomes = []
        for estudante in valores:
            nome = estudante[0]
            nomes.append(nome)
        #print(nomes)

        ### Notas
        notas = []
        for estudante in valores:
            nota_str = estudante[1::]
            nota_int = list(map(lambda nota: int(nota), nota_str))

            notas.append(nota_int)
        
        ## Armazenamento e ordenação em um dicionário
        dict_estudantes = dict(sorted(map(lambda nome, nota: (nome, sorted(nota, reverse=True)), nomes, notas)))
        #print(dict_estudantes)

        # Saída dos dados
        for chave, valor in dict_estudantes.items():
        
            media = round(sum(valor[:3])/len(valor[:3]), 2)
            
            print(f'Nome: {chave} Notas: {valor[:3]} Média: {media}')

