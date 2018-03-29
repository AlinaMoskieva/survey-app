FactoryGirl.define do
  factory :question do
    content { Faker::Lorem.sentense }
    index 0
  end
end
