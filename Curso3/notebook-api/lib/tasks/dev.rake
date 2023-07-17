namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Resetando o bdd..."
    # %x(rails db:drop db:create db:migrate)
        puts "Cadastrando os tipos de contatos..."
    
        kinds = %w(Amigo Comercial Conhecido)
        kinds.each do |kind|
          Kind.create!(
            description: kind
          )
        end
        puts "Tipos de contatos cadastrados com sucesso!"

        #########################
                  
        puts "Cadastrando os contatos..."
        100.times do |i|
          Contact.create!(  
            name: Faker::Name.name,
            email: Faker::Internet.email, 
            birthdate: Faker::Date.between(from: 45.days.ago, to: Date.today),
            kind: Kind.all.sample
          )
        end
        puts "Contatos cadastrados com sucesso!"

        ####################################
        
        puts "Cadastrando os telefones..."

        Contact.all.each do |contact|
          (1..5).to_a.sample.times do |i| #TA DANDO B.O
            phone = contact.phones.create!(number:Faker::PhoneNumber.cell_phone)
        end
      end
      puts "Telefones cadastrados com sucesso!"

      puts "Cadastrando os endereços..."
      Contact.all.each do |contact|
        Address.create(
          street: Faker::Address.street_address,
          city: Faker::Address.city,
          contact: contact
        )
      end
      puts "Endreços cadastrados com sucesso!"
    end
end
