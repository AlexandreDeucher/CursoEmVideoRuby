puts "======Calculo de Média======"
def boasVindas
    puts "digite seu nome :"
    @nome=gets.chomp
    puts "olá "+(@nome)+" vamos calcular sua Média deste semestre"
end
def pegandoValores
    puts "======Matematica======"
    puts (@nome)+" digite sua primeira nota :"
    notaMat1=gets.chomp.to_i#não esta pegando valor.
    puts "digite sua segunda nota :"
    notaMat2=gets.chomp.to_i
    puts "digite sua terceira nota :"
    notaMat3=gets.chomp.to_i
    @notaTotM=(notaMat1+notaMat2+notaMat3)
    puts "======Português======"
    puts (@nome)+" digite sua primeira nota :"
    notaPor1=gets.chomp.to_i
    puts "digite sua segunda nota :"
    notaPor2=gets.chomp.to_i
    puts "digite sua terceira nota :"
    notaPor3=gets.chomp.to_i
    @notaTotP=(notaPor1+notaPor2+notaPor3)
    puts "======Educação Fisica======"
    puts (@nome)+" digite sua primeira nota :"
    notaEdf1=gets.chomp.to_i
    puts "digite sua segunda nota :"
    notaEdf2=gets.chomp.to_i
    puts "digite sua terceira nota :"
    notaEdf3=gets.chomp.to_i
    @notaTotE=(notaEdf1+notaEdf2+notaEdf3)
end
def calculo
    mediaM=((@notaTotM)/3)
    mediaP=((@notaTotP)/3)
    mediaE=((@notaTotE)/3)

    if (mediaM < 6 )
        puts "você foi reprovado em Matematica"
    else
        puts "voce foi aprovado em Matematica"
        
    end
    if (mediaP < 6)
        puts "você foi reprovado em Portugues"
    else 
        puts "voce foi aprovado em Portugues"
       
    end
    if (mediaE < 6)
        puts "você foi reprovado em Educaçao fisica"
    else 
        puts "voce foi aprovado em Educaçao fisica"
    end
end

puts (boasVindas)
puts (pegandoValores)
puts (calculo)