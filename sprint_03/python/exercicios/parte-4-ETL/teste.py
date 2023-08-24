#------------------//^.^// -------------------#
# Extração e Tratamento dos Dados

# Criando o dicionário de atores
chaves = ['nome', 'fat_bruto', 'num_filmes', 'media_fat_por_filme', 'filme_maior_fat', 'fat_bruto_filme']

atores = dict.fromkeys(chaves)
#print(atores)
# Abrindo o dataset 
with open('actors.csv', 'r') as arquivo:
    
    linhas = arquivo.readlines()
    
    cabecalho = linhas[0].strip().split(',')

    # Percorrendo o arquivo e armazenando os dados
    for i, registro in enumerate(linhas[1:]):
        
        valores = registro.strip().split(',')
        print(valores[0])

        # Correção da linha 6: "Robert Downey, Jr."
        if linhas[i] == linhas[5]:

            com_aspas = linhas[5]
            sem_aspas = com_aspas.replace('"', ' ')
            valores = sem_aspas.strip().split(',')

            atores['nome'] = valor[0] + ' ' + valor[1]
            atores['fat_bruto'] = float(valor[2])
            atores['num_filmes'] = int(valor[3])
            atores['media_fat_por_filme'] = float(valor[4])
            atores['filme_maior_fat'] = valor[5]
            atores['fat_bruto_filme'] = float(valor[6])

            #print(valores[0])
            print(atores['nome'])

        else:
            # Preenchendo o dicionário de atores
            atores['nome'] = valores[0]
            atores['fat_bruto'] = float(valores[1])
            atores['num_filmes'] = int(valores[2])
            atores['media_fat_por_filme'] = float(valores[3])
            atores['filme_maior_fat'] = valores[4]
            atores['fat_bruto_filme'] = float(valores[5])


        # Imprimir a lista de atores

        #print(atores['fat_bruto'])
