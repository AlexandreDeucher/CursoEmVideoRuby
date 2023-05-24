class Pessoa
    def initialize(nomeFornecido = "indigente")
        @nome = nomeFornecido
        
    end
    def imprimirNome
        @nome
    end
    def falar
        "olá tudo certo!"
    end
end
p =Pessoa.new
puts p.imprimirNome

p1 = Pessoa.new("jackson")
puts p1.imprimirNome