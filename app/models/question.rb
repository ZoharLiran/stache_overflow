class Question < ActiveRecord::Base
  attr_accessible :content, :title
  has_many :answers
  has_many :comments, as: :commentable
end