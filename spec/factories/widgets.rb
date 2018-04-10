FactoryGirl.define do
  factory :widget do
    name { Faker::Lorem.word }
  end
end
