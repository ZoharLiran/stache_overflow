# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'


6.times do
  q = Question.create(content: "#{Faker::Lorem.sentence}?")
  4.times do
    a = Answer.create(content: "#{Faker::Commerce.product_name}!")
    2.times do
      a.acomments.create(content: Faker::Company.catch_phrase)
    end
    q.answers << a
  end
end