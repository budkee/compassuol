"""
Crie uma classe Avião que possua os atributos modelo, velocidade_maxima, cor e capacidade.

Defina o atributo cor de sua classe , de maneira que todas as instâncias de sua classe avião sejam da cor “azul”.

Após isso, a partir de entradas abaixo, instancie e armazene em uma lista 3 objetos da classe Avião.

Ao final, itere pela lista imprimindo cada um dos objetos no seguinte formato:

“O avião de modelo “x” possui uma velocidade máxima de “y”, capacidade para “z” passageiros e é da cor “w”.

Sendo x, y, z e w cada um dos atributos da classe “Avião”.



Valores de entrada:

modelo BOIENG456: velocidade máxima 1500 km/h: capacidade para 400 passageiros: Cor Azul

modelo Embraer Praetor 600: velocidade máxima 863km/h: capacidade para 14 passageiros: Cor Azul

modelo Antonov An-2: velocidade máxima de 258 Km/h: capacidade para 12 passageiros: Cor Azul
"""

# Início
# Criação das classes

class Aviao:
    def __init__(self, modelo, velocidade_maxima, capacidade, cor):
        # Atributos
        self.modelo = modelo
        self.velocidade_maxima = velocidade_maxima
        self.capacidade = capacidade
        self.cor = cor
    
    # Métodos
    @property
    def cor_padrao(self):
        self.cor = 'Azul'

# Instâncias
aviao_1 = Aviao("BOIENG456", 1500, 400, "Azul")
aviao_2 = Aviao("Embraer Praetor 600", 863, 14, "Azul" )
aviao_3 = Aviao("Antonov An-2", 258, 12, "Azul")

# Armazene em uma lista 3 objetos da classe Aviao
hangar = [aviao_1, aviao_2, aviao_3]

# Compute a saída formatada
for _ in hangar:
    x = _.modelo
    y = _.velocidade_maxima
    z = _.capacidade
    w = _.cor
    print(f"O avião de modelo {x} possui uma velocidade máxima de {y}km/h, capacidade para {z} passageiros e é da cor {w}\n")

# Fim