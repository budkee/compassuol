# Antes de iniciar verifique se o programa.py e o arquivo.csv estejam dentro do mesmo diretório.

# Pela CLI: entre no diretório

# Início do programa

## Abrir o arquivo
arquivo = open('actors.csv')

## Ler o arquivo
### Percorrer cada linha do arquivo
for registro in arquivo:
    
    # Com colchete
    # print(registro.split(','))
    
    # Sem colchete
    print(*registro.split(','))

## Fechar o arquivo: libera os recursos do SO
arquivo.close()
