class Pessoa
    def falar
        "printou direitinho"
    end
    def self.gritar(texto)
        "#{texto}!!!!"
    end
end 
p = Pessoa.new
puts Pessoa.gritar("hello")