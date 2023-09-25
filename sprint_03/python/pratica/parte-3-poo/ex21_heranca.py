"""
Implemente duas classes, Pato e Pardal , que herdam de uma superclasse chamada Passaro as habilidades de voar e emitir som.

Contudo, tanto Pato quanto Pardal devem emitir sons diferentes (de maneira escrita) no console, conforme o modelo a seguir.

Imprima no console exatamente assim:

Pato
Voando...
Pato emitindo som...
Quack Quack
Pardal
Voando...
Pardal emitindo som...
Piu Piu
"""

# Início
# Criação das classes: Passaros, Pato e Pardal
class Passaros:
    
    # Inicialização da classe
    def __init__(self, nome):
        self.nome = nome
    
    # Declaração dos métodos
    def voar(self):
        pass
    def soar(self):
        pass


class Pato:

    # Declaração dos métodos | Herança
    def voar(self):
        return 'Pato\nVoando...'
    
    def soar(self):
        return 'Pato emitindo som...\nQuack Quack'


class Pardal:

    # Declaração dos métodos | Herança
    def voar(self):
        return 'Pardal\nVoando...'

    def soar(self):
        return 'Pardal emitindo som...\nPiu Piu'


# Inicialização dos objetos
pato = Pato()
pardal = Pardal()

voa_pato = pato.voar()
ressoa_pato = pato.soar()

voa_pardal = pardal.voar()
ressoa_pardal = pardal.soar()

# Imprima o resultado esperado
print(voa_pato)
print(ressoa_pato)
print(voa_pardal)
print(ressoa_pardal)

# Fim