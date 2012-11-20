# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :house do |house|
    style House::STYLE.sample
    dwelling_type House::DWELLING_TYPE.sample

    living_area "Vanier"
    square_footage 1500
    bedrooms 3
    bathrooms 2
    year_built 3.years.ago.to_date
    property_attributes {FactoryGirl.attributes_for(:property)}


    #house.after_create {|h| FactoryGirl.build(:property, :propertible => h)}
  end
end
