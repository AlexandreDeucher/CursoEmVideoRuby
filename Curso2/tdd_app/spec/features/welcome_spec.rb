require 'rails_helper'

feature "Welcome", type: :feature do
  scenario 'Mostra a mensagem de Bem-vindo' do
    visit(root_path)
    expect(page).to have_content('Bem-Vindo')
  end

  scenario 'Verificar o link Cadastro Cliente' do
    visit(root_path)
    expect(find('ul li')).to have_link('Cadastro de Clientes')
  end
end
