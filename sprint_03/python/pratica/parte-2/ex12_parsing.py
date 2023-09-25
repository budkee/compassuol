"""
Leia o arquivo person.json, faça o parsing e imprima seu conteúdo.

Dica: leia a documentação do pacote json
"""

# Início
import json
# Declaração das variáveis
pessoa = 'person.json'

# Faça o parsing do arquivo
with open(pessoa, mode = 'r') as pessoa:
    dados = json.load(pessoa)
    # Imprima o resultado
    print(dados)
        

# Fim