# Antes de iniciar verifique se o programa.py e o arquivo.csv estejam dentro do mesmo diretório. Em seguida, entre no diretório pela CLI e, após a escrita, execute este arquivo por lá.

#----------------On-Streamming-----------------

## Ao executar o programa, faça:
with open('actors.csv', 'r') as arquivo:
    
    # Tratamento dos dados
    linhas = arquivo.readlines()
    cabecalho = linhas[0].strip().split(',')

    # Criando o dicionário de atores
    chaves = ['nome', 'fat_bruto', 'num_filmes', 'media_fat_por_filme', 'filme_maior_fat', 'fat_bruto_filme']
    
    atores = dict.fromkeys(chaves)
    
    for linha in linhas[1:]:

        valores = linha.strip().split(',')
        
        if linhas[5] == linha:
            com_aspas = linhas[5]
            sem_aspas = com_aspas.replace('"', ' ')
            #print(sem_aspas)
            valor = sem_aspas.strip().split()
            atores['nome'] = valor[0] + valor[1] + valor[2]
            atores[linha]['fat_bruto'] = float(valores[1])

        else:
            atores['nome'] = valores[0]
            atores['fat_bruto'] = valores[1]
            
    print(atores['nome'], atores['fat_bruto'])
        #atores['num_filmes'] = valores[2]
        #atores['media_fat_por_filme'] = valores[3]
        #atores['filme_maior_fat'] = valores[4]
        #atores['fat_bruto_filme'] = valores[5]
        #print(f"nome: {atores['nome']}")
        #for i, valor in atores.items():
            #print(f"{i}: {valor}")
        # Com a abertura da saida.txt, habilitado para escrita, realize a seguinte operação e armazene como 'saida':
   # with open('todos-os-atores.txt', 'w') as saida:

        # Percorra as linhas do arquivo
        #for registro in arquivo:
            
            # Leia e reserve
            #ator = registro.strip().split(',')
            
            # Escreva a saída
            #print('Actor: {}| {}| {}| {}| {}| {}\n'.format(*ator), file=saida)

## Se o arquivo de entrada tiver sido fechado sem erros, imprima:
if arquivo.closed:
    print('\nDataset fechado com sucesso! | //^.^// ')

## Se o arquivo de saída tiver sido fechado sem erros, imprima:
#if saida.closed:
    print('\nExtração fechado com sucesso! | //^.^// ')    