FactoryGirl.define do
  factory :question do
    content { Faker::Lorem.sentence }
    best_answer_id nil
  end
  factory :answer do
    content { Faker::Lorem.sentence }
    question
  end
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
  end
end