FactoryBot.define do
  factory :order do
    sequence (:description) {|n| "Pedido numero - #{n}"}
    association :customer, factory: :customer

  end
end
