describe 'Matchers de Comparação' do
    it '#equal' do 
        x= "ruby"
        y = "ruby"
        expect(x).not_to equal(y)
        expect(x).to equal(x)
    end 
end