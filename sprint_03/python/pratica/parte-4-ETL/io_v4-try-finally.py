# Antes de iniciar verifique se o programa.py e o arquivo.csv estejam dentro do mesmo diretório. Em seguida, entre no diretório pela CLI e, após a escrita, execute este arquivo por lá.

#----------------On-Streamming-----------------


## Ao executar o programa, tente:
try:
    arquivo = open('actors.csv')

    for registro in arquivo:
        
        # Sem colchete
        print(*registro.split(','))

## Por fim, faça:
finally:
    arquivo.close()

## Se o arquivo tiver sido fechado sem erros, imprima:
if arquivo.closed:
    print('Arquivo fechado com sucesso! | //^.^// ')