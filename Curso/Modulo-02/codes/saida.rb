puts "digite seu nome aqui"
nome = gets.chomp
puts "seu nome é: "+nome
puts "============================"

puts "digite seu salario : "
salario =gets.chomp.to_f

puts "seu salario atualizado é: "+(salario*1.10).to_s
