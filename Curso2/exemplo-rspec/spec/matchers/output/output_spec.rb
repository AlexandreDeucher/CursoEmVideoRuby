describe 'Metcher output' do
    it {expect{puts "alexandre"}.to output(/alexandre/).to_stdout}

    it {expect{warn "alexandre"}.to output(/alexandre/).to_stderr}
end