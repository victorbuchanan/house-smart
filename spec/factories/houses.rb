# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :house do

    property_attributes {{lot_size: 1000}}
  end
end
