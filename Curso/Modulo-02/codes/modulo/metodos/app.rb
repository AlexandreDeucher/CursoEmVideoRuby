require_relative 'pagamento'


puts "digite a bandeira do seu cartão"
b=gets.chomp
puts "===================="
puts "digite o numero do cartão"
n=gets.chomp
puts "===================="
puts "digite o valor da compra"
v=gets.chomp

puts Pagamento::pagar(b,n,v)