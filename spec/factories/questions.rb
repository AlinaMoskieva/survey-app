FactoryGirl.define do
  factory :question do
    content { Faker::Lorem.sentence }
    answer { Faker::Lorem.sentence }
    index 0
  end
end
