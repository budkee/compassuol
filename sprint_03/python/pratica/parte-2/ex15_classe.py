"""
Implemente a classe Lampada. 

A classe Lâmpada recebe um booleano no seu construtor, True se a lâmpada estiver ligada, False caso esteja desligada. 

A classe Lampada possuí os seguintes métodos:

- liga(): muda o estado da lâmpada para ligada

- desliga(): muda o estado da lâmpada para desligada

- esta_ligada(): retorna verdadeiro se a lâmpada estiver ligada, falso caso contrário

Para testar sua classe:

Ligue a Lampada

Imprima: A lâmpada está ligada? True

Desligue a Lampada

Imprima: A lâmpada ainda está ligada? False
"""


# Início
# Construção da classe
class Lampada:
    # Métodos
    def liga(self, status_inicial=True):
        self.status = status_inicial
    
    def esta_ligada(self):
        return self.status

    def desliga(self, troca):
        self.status = troca
    

# Criando uma instância da Lampada
lampada = Lampada()

# Que haja luz!
lampada.liga(True)

# Está ligada?
print("A lâmpada está ligada? ", lampada.esta_ligada())

# Desligue a lampada
lampada.desliga(False)

# Está ligada?
print("A lâmpada está ligada? ", lampada.esta_ligada())

# Fim

