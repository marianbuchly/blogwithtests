FactoryGirl.define do
  factory :category do
    name { Faker::Name.name }
    description "MyText"
    post nil
  end
end
