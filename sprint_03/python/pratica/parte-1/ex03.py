"""
Escreva um código Python para imprimir os números pares de 0 até 20 (incluso).

Importante: Aplique a função range() em seu código.

"""
# Início 
for i in range(0, 21):
    if i % 2 == 0:
        print(i)
    else:
        continue
# Fim

# Outra possibilidade
"""
# Incialize a variável
i = 0
n = 21
# Compute os números pares de 0 até 20(incluso)
while i < n:
    if i % 2 == 0:
        # Imprima o resultado
        print(i)
    else:    
        pass
    i += 1
"""