describe 'be_within' do 
    it {expect(12.5).to be_within(0.5).of(12)}
    it {expect(11.5).to be_within(0.5).of(12)}
    it {expect([12.5,12.3,12.6]).to all (be_within(0.7).of(12))}
end