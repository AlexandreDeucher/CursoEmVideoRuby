require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'be_longs_to' do
    customer = create(:customer)
    order = create(:order)
    expect(order.customer).to be_kind_of(Customer)
  end

  it 'Create_list' do
    orders = create_list(:order, 3, description: "testeeeee")
    puts orders.inspect
    expect(orders.count).to eq(3)
  end

  it 'has_many' do
    customer = create(:customer, :whith_orders)
    expect(customer.orders.count).to eq(3)
  end
end
