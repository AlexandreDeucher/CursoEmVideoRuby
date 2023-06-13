RSpec::Matchers.define :be_a_multiple_of do |expected|
    match do |actual|
        actual % expected == 0
    end
end

describe 18, 'Custom Matcher' do
    it {is_expected.to be_a_multiple_of(3)}
end