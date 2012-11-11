# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property do
    lot_size [900, 500, 1200, 3000, 5000].sample

  end

  factory :property_with_address do
    lot_size [900, 500, 1200, 3000, 5000].sample
    address ["University of Ottawa", "Carleton Universtity", "University of Toronto"].sample
  end
end
