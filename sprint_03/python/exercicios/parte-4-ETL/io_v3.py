# Antes de iniciar verifique se o programa.py e o arquivo.csv estejam dentro do mesmo diretório.

# Pela CLI: entre no diretório

# Início do programa

## Abrir o arquivo
arquivo = open('actors.csv')


for registro in arquivo:
    
    # Sem colchete
    print(*registro.split(','))

## Fechar o arquivo
arquivo.close()
