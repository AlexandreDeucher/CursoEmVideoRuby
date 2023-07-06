namespace :dev do
  desc "Configura o nosso ambiente de desenvolvimento"
  task setup: :environment do
  if Rails.env.development?
    show_spinner("Apagando db...") {%x(rails db:drop)}
    show_spinner("Craindo db...") {%x(rails db:create)}
    show_spinner("Migrando db...") {%x(rails db:migrate)}
    %x(rails dev:pet_add)
    %x(rails dev:owner_add)
  end 
end
task pet_add: :environment do 
  show_spinner("registering Pets...") do 
    pets=[
      {
        description: 'Laika',
        race: 'viralata'
      }
    ]
    pets.each do |pet| 
      sleep(1)
        Pet.find_or_create_by!(pet)
      end
    end
  end

  task owner_add: :environment do 
    show_spinner("registering owner...") do 
      owners=[
        {
          description: 'Alexandre',
        }
      ]
      owners.each do |owner| 
        sleep(1)
          Owner.find_or_create_by!(owner)
        end
      end
    end

  private
  def show_spinner(msg_start, msg_final = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
      spinner.auto_spin
      yield
      spinner.success("(#{msg_final})")
  end
end