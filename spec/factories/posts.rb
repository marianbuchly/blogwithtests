FactoryGirl.define do
   factory :post do
     title { Faker::Name.name }
   end
 end
