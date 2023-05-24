puts "======Calculo_de_Imc======"
puts "digite seu nome :"
@seuNome=gets.chomp
puts "digite seu peso :"
@peso=gets.chomp.to_f
puts "digite sua altura :"
@altura=gets.chomp.to_f

def calculoImc
    imc=(@peso/(@altura*@altura))
        puts ((@seuNome)+" seu imc é de :"+(imc).to_s)
end

puts (calculoImc)