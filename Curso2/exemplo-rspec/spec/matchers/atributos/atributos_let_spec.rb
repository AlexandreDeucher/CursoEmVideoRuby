require 'pessoa'

describe 'Atributos' do

    let(:pessoa) {Pessoa.new}

    it 'have_attributes' do
        
        pessoa.nome="Alexandre"
        pessoa.idade=20
        expect(pessoa).to have_attributes(nome: starting_with("A"), idade: (be >= 20))
    end
end