# Declaração da função
def pares_ate(n:int):
    # Generator para números pares
    pares = (i for i in range(2, n+1, 2) if n >= 2)
    yield list(pares)

# Início
if __name__ == '__main__':

    pares_gen = pares_ate(10) 
    for num in pares_gen:
        print(num)

