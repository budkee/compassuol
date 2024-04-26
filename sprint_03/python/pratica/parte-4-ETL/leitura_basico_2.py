# Antes de iniciar verifique se o programa.py e o arquivo.csv estejam dentro do mesmo diretório. Em seguida, entre no diretório pela CLI e, após a escrita, execute este arquivo por lá.

#----------------On-Streamming-----------------

## Abrir o arquivo
arquivo = open('actors.csv')

## Ler o arquivo
### Percorrer cada linha do arquivo
for registro in arquivo:
    
    # Impressão no terminal
    print(*registro.split(','))

## Fechar o arquivo: libera os recursos do SO
arquivo.close()
