FactoryGirl.define do
  factory :widget do
    name { Faker::Lorem.word }
    answer_type "input"

    trait :radio do
      answer_type "radio"
    end
  end
end
