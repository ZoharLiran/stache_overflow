class Question < ActiveRecord::Base
  attr_accessible :content
  has_many :answers
  has_many :qcomments
end