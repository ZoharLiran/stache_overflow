seeds =
["Robert winston hairy kid at school basil fawlty hairy lipsum sterling albert einstein",
"frontiersman, frightfully nice sterling hairy kid at school hairy lipsum basil fawlty",
"robert winston burt reynolds jimi hendrix albert einstein village people frontiersman",
"charming villain albert einstein, blacksmith village people hairy lipsum charming villain",
"albert einstein albert einstein sterling basil fawlty burt reynolds robert winston",
"frightfully nice frontiersman iron tache hairy kid at school jimi hendrix Leonine robot",
"moustache? Middle eastern despot bad guy gentleman, devilish cad bruce forsyth bad guy",
"middle eastern despot helllloooo village people dis glorious facial hair gentleman hairy",
"lipsum, omar sharif lando calrissian village people bruce forsyth dis middle eastern",
"despot devilish cad bad guy helllloooo soup strainer hairy lipsum iron tache dis",
"gentleman glorious facial hair?"]

seeds.each do |s|
  Question.create(content: s)
end

6.times do
  q = Question.create(content: "#{Faker::Lorem.sentence}?")
  4.times do
    q.qcomments.create(content: Faker::Company.catch_phrase)
    a = Answer.create(content: "#{Faker::Commerce.product_name}!")
    2.times do
      a.acomments.create(content: Faker::Company.catch_phrase)
    end
    q.answers << a
  end
end

User.create(name: "Eric", email: "eric@eric.com", password: "123456", password_confirmation: "123456")
User.create(name: "Matthew", email: "matthew@matthew.com", password: "123456", password_confirmation: "123456")
User.create(name: "Drew", email: "drew@drew.com", password: "123456", password_confirmation: "123456")
User.create(name: "Katherine", email: "katherine@katherine.com", password: "123456", password_confirmation: "123456")