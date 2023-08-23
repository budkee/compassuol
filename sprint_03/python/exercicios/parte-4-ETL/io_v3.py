# Antes de iniciar verifique se o programa.py e o arquivo.csv estejam dentro do mesmo diretório. Em seguida, entre no diretório pela CLI e, após a escrita, execute este arquivo por lá.

#----------------On-Streamming-----------------

## Abrir o arquivo
arquivo = open('actors.csv')


for registro in arquivo:
    
    print(*registro.strip().split(','))

## Fechar o arquivo
arquivo.close()
