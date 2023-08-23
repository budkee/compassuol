# Antes de iniciar verifique se o programa.py e o arquivo.csv estejam dentro do mesmo diretório. Em seguida, entre no diretório pela CLI e, após a escrita, execute este arquivo por lá.

#----------------On-Streamming-----------------

# Ao executar o programa, tente:

## Abra o arquivo.csv e reserve como 'arquivo'
with open('actors.csv') as arquivo:

    for registro in arquivo:
        
        print(*registro.split(','))

## Se o arquivo tiver sido fechado sem erros, imprima:
if arquivo.closed:
    print('\nArquivo fechado com sucesso! | //^.^// ')