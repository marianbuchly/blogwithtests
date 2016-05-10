FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    age 1
    post nil
  end
end
