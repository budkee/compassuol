## Imports
import hashlib

# Início
## Entrada da String

while True:
    ## Entrada
    entrada = input('\nDigite a string [Digite "S" para sair]: ')

    ## Continua?
    if entrada == "S".lower() or entrada == "S":
        break

    ## Criação do objeto hash
    obj_hash = hashlib.sha1()

    ## Atualização do objeto passando a string codificada em bytes
    obj_hash.update(entrada.encode('utf-8'))

    ## Gerar a hash no formato hexadecimal
    hex_hash = obj_hash.hexdigest()

    ## Saída
    print("Hash da string codificada por SHA-1:", hex_hash)
    
# Fim