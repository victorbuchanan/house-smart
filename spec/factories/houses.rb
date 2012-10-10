# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :house do
    style House::STYLE.sample
    dwelling_type House::DWELLING_TYPE.sample

    property_attributes {{lot_size: 1000}}
  end
end
