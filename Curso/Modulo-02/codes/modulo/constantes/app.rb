require_relative 'pagamento'

include Pagamento

puts Pagamento::PI #consegue buscar sem incluir o Pagamento
puts PI #precisa do include
