FactoryGirl.define do
  factory :answer_variant do
    content { Faker::Lorem.sentence }
    question ""
    truthy false

    trait :right do
      truthy true
    end
  end
end
