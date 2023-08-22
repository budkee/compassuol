# Antes de iniciar verifique se o programa.py e o arquivo.csv estejam dentro do mesmo diretório.

# Pela CLI: entre no diretório

# Início do programa

## Ao executar o programa, tente:

with open('actors.csv') as arquivo:
    with open('todos-os-atores.txt', 'w') as saida:
        for registro in arquivo:
            # Leia e reserve
            ator = registro.strip().split(',')
            # Escreva e
            print('{}'.format(*ator), file=saida)

## Se o arquivo de entrada tiver sido fechado sem erros, imprima:
if arquivo.closed:
    print('\nDataset fechado com sucesso! | //^.^// ')

## Se o arquivo de saída tiver sido fechado sem erros, imprima:
if saida.closed:
    print('\nExtração fechado com sucesso! | //^.^// ')    