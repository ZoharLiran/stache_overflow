FactoryGirl.define do
  factory :question do
    content { Faker::Lorem.sentence }
    best_answer_id nil
  end
  factory :answer do
    content { Faker::Lorem.sentence }
    question
  end
end