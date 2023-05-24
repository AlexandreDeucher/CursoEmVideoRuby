class Pessoa
    def falar
        "olá alexandre"
    end

    def meuId
        "Meu id é o: #{self.object_id}" 
    end
end
p = Pessoa.new
puts p.meuId

p2 = Pessoa.new
puts p.meuId