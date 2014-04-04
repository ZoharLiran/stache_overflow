class Question < ActiveRecord::Base
  attr_accessible :content #look into using require/permit instead, the rails 4 way!
  has_many :answers
end