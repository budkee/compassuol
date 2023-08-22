# Antes de iniciar verifique se o programa.py e o arquivo.csv estejam dentro do mesmo diretório.

# Pela CLI: entre no diretório

# Início do programa

## Ao executar o programa, tente:

with open('actors.csv') as arquivo:

    for registro in arquivo:
        
        # Sem colchete
        print(*registro.split(','))

## Se o arquivo tiver sido fechado sem erros, imprima:
if arquivo.closed:
    print('\nArquivo fechado com sucesso! | //^.^// ')