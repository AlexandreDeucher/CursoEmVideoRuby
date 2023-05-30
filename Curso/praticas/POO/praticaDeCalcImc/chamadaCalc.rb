require_relative 'CalcImc'
include ChamarImc   
    puts "digite o seu peso :"
    pe=gets.chomp.to_f
    puts "digite a sua altura :"
    a=gets.chomp.to_f
    puts calcImc(pe,a)
 