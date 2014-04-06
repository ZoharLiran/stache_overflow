class Question < ActiveRecord::Base
  attr_accessible :content, :title, :vote_count
  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable
end