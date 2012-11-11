# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :area_base_price do
    area_name "MyString"
    avg_sqft 1
    avg_lot 1
    avg_year 1
    avg_bed 1
    avg_bath 1
    price_per_sqft 1
    price_per_lot 1
    price_per_year 1
    price_per_bed 1
    price_per_bath 1
  end
end
