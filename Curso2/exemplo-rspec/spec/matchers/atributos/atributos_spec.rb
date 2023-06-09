require 'pessoa'

describe 'Atributos' do

    before(:each) do
        puts "Antes"
        @pessoa = Pessoa.new
    end

    after(:each) do
        @pessoa.nome = "Sem nome!"
        puts "Depois >>>>>>>>>>> #{@pessoa.inspect}"
    end

    it 'have_attributes' do
        
        @pessoa.nome="Alexandre"
        @pessoa.idade=20
        expect(@pessoa).to have_attributes(nome: starting_with("A"), idade: (be >= 20))
    end
end