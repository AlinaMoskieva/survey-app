FactoryGirl.define do
  factory :widget do
    name { Faker::Lorem.word }
    type "input"

    trait :radio do
      type "radio"
    end
  end
end
