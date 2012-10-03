# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property do
    lot_size "9.99"
    propertible_id 1
    propertible_type "MyString"
  end
end
