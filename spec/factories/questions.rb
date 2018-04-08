FactoryGirl.define do
  factory :question do
    content { Faker::Lorem.sentence }
    widget
    index 0
  end
end
