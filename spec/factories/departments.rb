# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :department do
    name "MyString"
    head nil
    deputy nil
  end
end
