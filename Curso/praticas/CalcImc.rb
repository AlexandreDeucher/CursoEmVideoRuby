puts "digite seu peso :"
peso=gets.chomp.to_f
puts "digite sua altura :"
altura=gets.chomp.to_f

imc=(peso/(altura*altura))
puts ("seu imc é de :"+(imc).to_s)
