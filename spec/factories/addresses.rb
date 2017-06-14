FactoryGirl.define do
  factory :address do
    country { Faker::Address.country }
    city    { Faker::Address.city }
    street  { Faker::Address.street_name }
    number  { Faker::Address.building_number }
  end
end