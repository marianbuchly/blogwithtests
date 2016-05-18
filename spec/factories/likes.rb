FactoryGirl.define do
  factory :like do
    like { Faker::Name.name }
    post nil
    user nil
  end
end
