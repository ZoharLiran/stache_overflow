Question.destroy_all
Answer.destroy_all
Comment.destroy_all

10.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.phone_number, password: "1234")
end

34.times do |i|
  u = User.all.sample
  q = u.questions.create(title: "Question #{i}", content:Faker::Lorem.sentence(3) + " ?")
  5.times do |j|
    u = User.all.sample
    u.answers << q.answers.create(content: Faker::Lorem.sentence(9))
  end
end