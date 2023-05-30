require_relative 'CalcMedia'
include PegarValores
    puts "digite sua primeira nota"
    n1=gets.chomp.to_i
    puts "digite sua primeira nota"
    n2=gets.chomp.to_i
    puts "digite sua primeira nota"
    n3=gets.chomp.to_i
    puts "digite sua primeira nota"
    n4=gets.chomp.to_i
    puts "===================================="
    puts "sua média é :"+calcularMedia(n1,n2,n3,n4).to_s