#------------------//^.^// -------------------#
# Extração e Tratamento dos Dados

# Criando o dicionário de atores
chaves = ['nome', 'fat_bruto', 'num_filmes', 'media_fat_por_filme', 'filme_maior_fat', 'fat_bruto_filme']
atores = dict.fromkeys(chaves)

# Abrindo o dataset 
with open('actors.csv', 'r') as arquivo:

    linhas = arquivo.readlines()
    cabecalho = linhas[0].strip().split(',')

    for registro in linhas[1:]:
        
        valores = registro.strip().split(',')
        
        # Preenchendo o dicionário de atores
        atores['nome'] = valores[0]
        atores['fat_bruto'] = valores[1]
        atores['num_filmes'] = valores[2]
        atores['media_fat_por_filme'] = valores[3]
        atores['filme_maior_fat'] = valores[4]
        atores['fat_bruto_filme'] = valores[5]
            
    print()

# -------------------------------------------
## Etapa 01: Apresente o ator/atriz com o maior número de filmes e a respectiva quantidade.

    # Abrindo a saida
    with open('etapa-1.txt', 'w') as saida_1:
        
        ## Maior número de filmes
        maior_num_filmes = max(atores['num_filmes'])

        ## Nome do ator/atriz correspondente
        indice_01 = atores['num_filmes'].index(maior_num_filmes)
        nome_01 = atores['nome'][indice_01]


        # Resultado 01
        etapa_01 = [nome_01, maior_num_filmes]

        # Escreva a saída
        print('Actor: {}\nQuantidade de filmes: {}'.format(*etapa_01, file=saida_1))

    ## Se o arquivo de saída tiver sido fechado sem erros, imprima:
    if saida_1.closed:
        print('\{} fechado com sucesso! | //^.^// '.format(saida_1))




# -------------------------------------------
## Etapa 02: Apresente a média de receita de bilheteria bruta dos principais filmes `#1 Movie`, considerando todos os atores. Estamos falando aqui da média da coluna `Gross`.

    with open('etapa-2.txt', 'w') as saida_2:
        
        ## Média de faturamento bruto por ator
        media_fat_bruto_filme = sum(atores['fat_bruto_filme'])/ len(atores['fat_bruto_filme'])

        # Resultado 02
        etapa_02 = media_fat_bruto_filme

        # Escreva a saída
        print('Média: {}'.format(etapa_02), file=saida_2)

    ## Se o arquivo de saída tiver sido fechado sem erros, imprima:
    if saida_2.closed:
        print('\{} fechado com sucesso! | //^.^// '.format(saida_2))


# -------------------------------------------
## Etapa 03: AApresente o ator/atriz com a maior média de receita de bilheteria bruta por filme do conjunto de dados. Considere a coluna `Avarage per Movie` para fins de cálculo.
    with open('etapa-3.txt', 'w') as saida_3:
        
        ## Ator/Atriz com a maior media_fat_bruto
        max_media_fat_bruto = max(atores['media_fat_por_filme'])

        # Resultado 02
        etapa_03 = max_media_fat_bruto

        # Escreva a saída
        print('Média: {}'.format(etapa_03), file=saida_3)

    ## Se o arquivo de saída tiver sido fechado sem erros, imprima:
    if saida_3.closed:
        print('\{} fechado com sucesso! | //^.^// '.format(saida_3))


# -------------------------------------------
## Etapa 04: A coluna `#1 Movie` contém o filme de maior bilheteria em que o ator atuou. Realize (i) a contagem de aparições destes filmes no dataset, (ii) listando-os ordenados pela quantidade de vezes em que estão presentes. Considere a ordem decrescente e, em segundo nível, o nome do  filme.

    with open('etapa-4.txt', 'w') as saida_4:

        filmes = []
        tam = len(atores['filme_maior_fat'])

        ## Quantas vezes os filmes aparecem na coluna `#1 Movie`?

        for linha in tam:
            for filme in tam: 
            # Caso encontre um filme com o mesmo nome...
                if linha != filme:
                    # ... adicione na lista de filmes distintos
                    filmes.append(atores['filme_maior_fat'][filme])
                else:
                    repeticoes_filme = filmes.count(atores['filme_maior_fat'][filme])

        # Resultado 04
        etapa_04 = [filme, repeticoes_filme, ]
        ## Ordenação dos filmes
        etapa_04.sort()
        
        # Escreva a saída
        print('{} - O filme {} aparece {} vez(es) no dataset.'.format(enumerate(etapa_04), *etapa_04), file=saida_4)

    ## Se o arquivo de saída tiver sido fechado sem erros, imprima:
    if saida_4.closed:
        print('\{} fechado com sucesso! | //^.^// '.format(saida_4))


# -------------------------------------------
## Etapa 05: Apresente a lista dos atores ordenada pela receita bruta de bilheteria de seus filmes (coluna Total Gross), em ordem decrescente.

    with open('etapa-5.txt', 'w') as saida_5:

        atores_ord = atores['nome'] 

        # Resultado 05
        etapa_05 = atores_ord

        ## Ordenação dos filmes
        etapa_05.sort(key=atores['fat_bruto'])
        
        # Escreva a saída
        print('{} '.format(enumerate(etapa_05), *etapa_05), file=saida_5)

    ## Se o arquivo de saída tiver sido fechado sem erros, imprima:
    if saida_5.closed:
        print('\{} fechado com sucesso! | //^.^// '.format(saida_5))

## Se o arquivo tiver sido fechado sem erros, imprima:
if arquivo.closed:
    print('\nArquivo fechado com sucesso.')
#------------------//^.^// -------------------#