describe 'Test Double' do
    it '--' do
        user = double('User')
        allow(user).to receive_messages(name: 'ale', password: 'secret')
        puts user.name
        puts user.password
        user.abc
    end
end