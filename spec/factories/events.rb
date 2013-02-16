# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    term_start "2013-02-12"
    term_end "2013-02-12"
    order_end "2013-02-12"
    manager nil
    deputy nil
  end
end
