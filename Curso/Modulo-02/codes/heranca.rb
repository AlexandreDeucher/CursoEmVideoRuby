class Pessoa
    attr_accessor :nome, :sobrenome, :email
end

class PessoaFisica < Pessoa
    attr_accessor :cpf

    def falar(texto)
        texto
    end
end

class PessoaJuridica < Pessoa
    attr_accessor :cnpj

    def pargarContas 
        puts "pagando os boletos, é sobre isso"
    end
end
p = Pessoa.new
#setter
puts p.nome="alexandre"
puts p.email="alexandredeucher@gmail.com"
#getter
p.nome="alexandre"
p.email="alexandredeucher@gmail.com"
puts "-------------------------------------------"
p2 = PessoaFisica.new
#setter
puts p2.nome="isaura"
puts p2.email="isauradelemos@gmail.com"
puts p2.cpf="222222222"
#getter
p2.nome
p2.email
p2.cpf
p2.falar("fisica")
puts "------------------------------------------"

p2 = PessoaJuridica.new
#setter
puts p2.nome="intel"
puts p2.email="intel@gmail.com"
puts p2.cnpj="333333333333"
#getter
p2.nome
p2.email
p2.cnpj
puts p2.pargarContas
puts "-------------------------------------------"

