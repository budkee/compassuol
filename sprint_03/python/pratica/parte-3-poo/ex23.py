"""
Crie uma classe  Calculo  que contenha um método que aceita dois parâmetros, X e Y, e retorne a soma dos dois. Nessa mesma classe, implemente um método de subtração, que aceita dois parâmetros, X e Y, e retorne a subtração dos dois (resultados negativos são permitidos).

Utilize os valores abaixo para testar seu exercício:

x = 4 
y = 5

imprima:

Somando: 4+5 = 9
Subtraindo: 4-5 = -1

"""

# Início
# Declaração das classes
class Calculo:
    def __init__(self):
        pass
    
    # Declarando os métodos
    def soma(self, x, y):
        return x + y
    
    def subtracao(self, x, y):
        return x - y

# Inicialização dos objetos
calcula = Calculo()
x = 4 
y = 5

# Compute alguma coisa
soma = calcula.soma(x, y)
subtrai = calcula.subtracao(x, y)

# Imprima o resultado
print(f'Somando: {x}+{y} = ', soma)
print(f'Subtraido: {x}-{y} = ', subtrai)

# Fim