FactoryGirl.define do
  factory :category do
    name { Faker::Name.name }
    description "MyText"
  end
end
