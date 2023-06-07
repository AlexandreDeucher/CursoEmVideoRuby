describe Array.new([1,2]) do 
    it '#include' do 
        expect(subject).to include(1)
        expect(subject).to include(2)
        expect(subject).to include(1,2)
        expect(subject).to include(2,1)
    end
    it '#match_array' do
        expect(subject).to match_array([2,1])
    end

    it '#contain_exactly' do
        expect(subject).to contain_exactly(1,2)
    end
end