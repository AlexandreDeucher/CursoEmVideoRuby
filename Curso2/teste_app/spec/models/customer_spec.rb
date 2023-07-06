require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'Full Name - sobreescrevendo o atributo' do
    customer = create(:customer, description: "alexandre")
    expect(customer.full_name).to start_with("Sr.alexandre")
  end

  it 'Full Name' do
    customer = create(:user) # ou create(:costumer)
    expect(customer.full_name).to start_with("Sr.")
  end

  it 'vip' do
    customer = create(:customer_vip) # ou create(:costumer)
    expect(customer.vip).to eq(true)
  end
  it 'default' do
    customer = create(:customer_default) # ou create(:costumer)
    expect(customer.vip).to eq(false)
  end

  it 'Usando o attributes_for' do
    attrs = attributes_for(:customer)
  end

  it 'Usando o attributes_for' do
    attrs = attributes_for(:customer_vip)
  end

  it 'Usando o attributes_for' do
    attrs = attributes_for(:customer_default)
  end

  it 'Usando o attributes_for' do
    attrs = attributes_for(:customer)
    customer = Customer.create(attrs)
    expect(customer.full_name).to start_with("Sr.")
  end

  it 'Atributo Trasitório' do
    customer = create(:customer_default, upcased: true)
    expect(customer.description.upcase).to eq(customer.description)
  end

  it 'Cliente Masculino vip' do
    customer = create(:customer_male_vip)
    expect(customer.gender).to eq('M')
    expect(customer.vip).to eq(true)
  end

  it 'Cliente Masculino default' do
    customer = create(:customer_male_default)
    expect(customer.gender).to eq('M')
    expect(customer.vip).to eq(false)
  end

  it 'Cliente Masculino' do
    customer = create(:customer_male)
    expect(customer.gender).to eq('M')
  end

  it 'Cliente feminino vip' do
    customer = create(:customer_female_vip)
    expect(customer.gender).to eq('F')
    expect(customer.vip).to eq(true)
  end

  it 'Cliente feminino default' do
    customer = create(:customer_female_default)
    expect(customer.gender).to eq('F')
    expect(customer.vip).to eq(false)
  end

  it 'Cliente feminino' do
    customer = create(:customer_female)
    expect(customer.gender).to eq('F')
  end

  it 'travel-to' do
  #    travel_to Time.zone.local(2004, 11, 23, 01, 04, 44) do
  #      @customer = create(:customer_vip)
  #  end  
  #  puts @customer.created_at
  #  puts Time.now
  #  expect(@customer.created_at).to eq(Time.new(2004, 11, 23, 01, 04, 44).in_time_zone)
  #end
    travel_to Time.zone.parse('2004-11-23 01:04:44') do
      @customer = create(:customer_vip)
    end
    puts @customer.created_at
    puts Time.zone.now
    expect(@customer.created_at).to eq(Time.zone.parse('2004-11-23 01:04:44'))
  end

  it {expect{create(:customer)}.to change {Customer.all.size}.by(1)}
end
