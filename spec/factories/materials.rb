# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :material do
    name "MyString"
    material_group nil
    material_type nil
    quantity 1.5
    unit nil
  end
end
