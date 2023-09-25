"""
Escreva um programa que lê o conteúdo do arquivo texto arquivo_texto.txt e imprime o seu conteúdo.

Dica: leia a documentação da função open(...)
"""

# Início
# Entrada das variáveis
arquivo = 'arquivo_texto.txt'

# Leia o conteúdo
with open(arquivo, mode='r') as arquivo:
    conteudo = arquivo.read()
    # Imprima o conteúdo
    print(conteudo)
# Fim