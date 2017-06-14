FactoryGirl.define do
  factory :train do
    name        { Faker::Company.name }
    number      { Faker::Number.number(10) }
    wagon_count { Faker::Number.between(2, 50) }
  end
end