FactoryGirl.define do
  factory :beverage_store do
    name  { Faker::Company.name }
    sequence(:description) { |i| "Description #{i}" }
  end
end