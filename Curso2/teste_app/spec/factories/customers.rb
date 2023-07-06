FactoryBot.define do
    factory :customer, aliases: [:user] do
        
        transient do
            upcased {false}
            qtt_orders {3}
        end
        
        description {Faker::Name.name}
        #email {Faker::Internet.email}
        address {Faker::Address.street_address}

        sequence(:email) { |n| "meu_email-#{n}@gmail.com"}

        trait :male do
            gender {"M"}
        end

        trait :female do
            gender {"F"}
        end

        trait :vip do
            vip {true}
            days_to_pay {30}
        end
        trait :default do
            vip {false}
            days_to_pay {15}
        end

        trait :whith_orders do
            after(:create) do |customer, evaluator|
                create_list(:order, evaluator.qtt_orders, customer: customer)
            end
        end


        factory :customer_male, traits: [:male]
        factory :customer_female, traits: [:female]

        factory :customer_vip, traits: [:vip]
        factory :customer_default, traits: [:default]

        factory :customer_male_vip, traits: [:male, :vip]
        factory :customer_male_default, traits: [:male, :default]

        factory :customer_female_vip, traits: [:female, :vip]
        factory :customer_female_default, traits: [:female, :default]




        after(:create) do |customer, evaluator|
            customer.description.upcase! if evaluator.upcased
            
        end
    end
end