# Antes de iniciar verifique se o programa.py e o arquivo.csv estejam dentro do mesmo diretório. Em seguida, entre no diretório pela CLI e, após a escrita, execute este arquivo por lá.

#------------------On-Demand -----------------

## Abrir o arquivo
arquivo = open('actors.csv')

## Ler o arquivo
dados = arquivo.read()

## Fechar o arquivo: libera os recursos do SO
arquivo.close()

## Percorrer cada linha do arquivo
for registro in dados.splitlines():
    
    # Com colchete
    # print(registro.split(','))
    
    # Sem colchete
    print(*registro.split(','))