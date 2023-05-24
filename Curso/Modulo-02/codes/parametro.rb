class Pessoa
    def initialize (cont = 10)
        cont.times do |i|
            puts "contando. #{i}"
        end
    end

    def falar(texto = "olá pessoal!")
        texto
    end
    def falar2(nome = "pessoal")
        "olá #{nome}!"
    end
    def falar3(texto = "olá!", texto2 = "Hello!")
        "#{texto} - #{texto2}"
    end
end
p=Pessoa.new
puts p.falar("alexandre")
puts p.falar2 ("jackson")
puts p.falar3("mundo")
