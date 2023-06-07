require 'pessoa'

describe 'Atributos' do
    it 'have_attributes' do
        pessoa = Pessoa.new
        pessoa.nome="Alexandre"
        pessoa.idade=20
        expect(pessoa).to have_attributes(nome: starting_with("A"), idade: (be >= 20))
    end
end