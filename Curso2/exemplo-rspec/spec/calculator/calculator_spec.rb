require 'calculator'
describe Calculator do 

    subject(:calc) {described_class.new()}
    context '#div' do 
        it 'division by zero' do
					expect{subject.div(3,0)}.to raise_error("divided by 0")
        end
    context '#sum' do
    it 'with positive numbers' do 
        result = calc.sum(5,7)
        expect(result).to eq(12)
    end

    it 'with negative numbers' do 
        result = calc.sum(-6,7)
        expect(result).to eq(1)
        end

        it 'with negative and positive numbers' do 

          result = calc.sum(-6,7)
          expect(result).to eq(1)
      end
    end
  end
end 