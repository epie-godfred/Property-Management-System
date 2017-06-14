FactoryGirl.define do
  factory :timetable do
    arrival_time    { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    departure_time  { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    day { Faker::Number.between(0, 6) }
  end
end