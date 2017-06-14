FactoryGirl.define do
  factory :station do
    name  { Faker::Company.name }
    phone { Faker::PhoneNumber.cell_phone }
    sequence(:information) { |i| "Information #{i}" }
  end
end
