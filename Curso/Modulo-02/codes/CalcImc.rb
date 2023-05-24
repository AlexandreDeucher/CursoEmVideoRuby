puts "digite seu peso : "
peso=gets.to_f

if peso <= 75 && peso > 50
    puts "peso ideal"
else peso > 75 && peso <= 100 
    puts "acima do peso"
if peso > 100
    puts "nivel 1 de obesidade"
else peso <= 50
    puts "desnutricao"
end