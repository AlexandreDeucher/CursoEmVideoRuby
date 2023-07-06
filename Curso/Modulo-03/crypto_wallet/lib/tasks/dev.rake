namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") {%x(rails db:drop)}
      show_spinner("Criando BD...") {%x(rails db:create)}
      show_spinner("Migrando BD...") {%x(rails db:migrate)}    
      %x(rails dev:add_mining_types) 
      %x(rails dev:add_coins) 
    else
      puts "Voce não está no ambiente de desenvolvimento!"
    end
  end

  #
desc "Cadastra as moedas"
  task add_coins: :environment do
    show_spinner("Cadastrando Moedas...") do
    coins = [
        {
          description: "Bitcoin",
          acronym: "BTC",
          url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/640px-Bitcoin.svg.png",
          mining_type: MiningType.find_by(acronym: 'PoW')
        },
        {
          description: "Ethereum",
          acronym: "ETH",
          url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/1257px-Ethereum_logo_2014.svg.png",
          mining_type: MiningType.all.sample 
        },
        {
          description: "Dash",
          acronym: "DASH",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png",
          mining_type: MiningType.all.sample 
      }
      ]


    coins.each do |coin|
      sleep(1)
    Coin.find_or_create_by!(coin)
    end
  end
end
#
desc "Cadastra os tipos de mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando Tipos de mineração...") do 
      mining_types=[
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of Stake", acronym: "PoS"},
        {description: "Proof of Capacity", acronym: "PoC"}
      ]
      mining_types.each do |mining_type|
        sleep(1)
      MiningType.find_or_create_by!(mining_type)
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

