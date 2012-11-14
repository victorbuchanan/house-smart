# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :professional do
    area_of_service "MyString"
    longitude 1.5
    latitude 1.5
    company_name "MyString"
    email "MyString"
    phonenumber "MyString"
    fax "MyString"
    ptype "MyString"
    company_num 1
  end
end
