# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Thomas Edison"
    email "thomas@edison.com"

    #password_digest "MyString"
  end
end
