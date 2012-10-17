# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :house do |house|
    style House::STYLE.sample
    dwelling_type House::DWELLING_TYPE.sample

    property_attributes {FactoryGirl.attributes_for(:property)}


    #house.after_create {|h| FactoryGirl.build(:property, :propertible => h)}
  end
end
