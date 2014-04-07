Question.destroy_all
Answer.destroy_all
Comment.destroy_all

User.create(name: "Test", email: "test@test.com", phone: "999-888-7654")
34.times do |i|
  u = User.all.sample
  q = u.questions.create(title: "Question #{i}", content:Faker::Lorem.sentence(3) + " ?")
  5.times do |j|
    q.answers.create(content: Faker::Lorem.sentence(9))
  end
end