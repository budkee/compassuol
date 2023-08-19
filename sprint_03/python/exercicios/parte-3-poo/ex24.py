"""
Crie uma classe Ordenadora que contenha um atributo listaBaguncada e que contenha os métodos ordenacaoCrescente e ordenacaoDecrescente.

Instancie um objeto chamado crescente dessa classe Ordenadora que tenha como listaBaguncada a lista [3,4,2,1,5] e instancie um outro objeto, decrescente dessa mesma classe com uma outra listaBaguncada sendo [9,7,6,8].

Para o primeiro objeto citado, use o método ordenacaoCrescente e para o segundo objeto, use o método ordenacaoDecrescente.

Imprima o resultado da ordenação crescente e da ordenação decresce

[1, 2, 3, 4, 5] 
[9, 8, 7, 6]
"""

# Início
# Cria as classes
class Ordenadora:

    def __init__(self, listaBaguncada):
        # Declara os atributos
        self.listaBaguncada = listaBaguncada
    
    # Declara os métodos
    
    def ordenacaoCrescente(self):
        self.listaBaguncada.sort()
    
    def ordenacaoDecrescente(self):
        self.listaBaguncada.sort(reverse=True)
    @property
    def lista_ordenada_cres(self):
        return self.listaBaguncada
    
    @property
    def lista_ordenada_dec(self):
        return self.listaBaguncada

# Listas, constantes e variáveis
list_cresc = [3,4,2,1,5]
list_decresc = [9,7,6,8]

# Instâncias dos objetos
crescente = Ordenadora(list_cresc)
decrescente = Ordenadora(list_decresc)

# Compute a ordenação
crescente.ordenacaoCrescente()

# Imprima o resultado

print(crescente.lista_ordenada_cres)

decrescente.ordenacaoDecrescente()
print(decrescente.lista_ordenada_dec)
# Fim