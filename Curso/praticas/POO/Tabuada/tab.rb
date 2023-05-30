module ChamarCalculo
    def calculo (numero)
        a= []
        a.push(1)
        a.push(2)
        a.push(3)
        a.push(4)
        a.push(5)
        a.push(6)
        a.push(7)
        a.push(8)
        a.push(9)
        a.push(10)
        a.each do |i|
        puts i*"#{numero}".to_i
        end
    end
end