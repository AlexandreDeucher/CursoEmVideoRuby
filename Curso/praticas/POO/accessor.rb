class Carro
    attr_accessor :cor, :modelo, :motor
end

c=Carro.new
puts "escolha uma cor"
c.cor=gets
puts "diga o modelo do carro"
c.modelo=gets
puts "=========================="
puts c.modelo.chomp+" "+c.cor