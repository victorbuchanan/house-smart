# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property do
    lot_size [900.99, 500, 1200, 3000, 5000].sample

  end
end
