"""
Escreva um código Python para imprimir todos os números primos entre 1 até 100. 

Lembre-se que você deverá desenvolver o cálculo que identifica se um número é primo ou não.

Importante: Aplique a função range().
"""
# Inicio
for m in range(2, 101): 
    primo = True 
    # Percorra e verifique os possíveis divisores de m, de 2 até a raiz quadrada de m + 1
    for n in range(2, int (m**0.5)+1): 
        # Caso tenha o resto = 0, é um numero composto
        if m % n == 0: 
            primo = False
            break
    if primo:
        print(m)
# Fim