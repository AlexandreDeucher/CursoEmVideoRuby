class Pessoa
    
    #attr_accessor :nome

    def initialize(nome = "testando meu amigo")
        @nome = nome
    end
    def setNome=(nome)
        @nome = nome
        
    end
    def getNome
        @nome
    end
end
p = Pessoa.new

p.setNome = "alexandre"

p.setNome = "isaura"

p.setNome = "adenir"

puts p.getNome