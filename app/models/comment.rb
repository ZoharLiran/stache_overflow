class Comment < ActiveRecord::Base
  attr_accessible :content, :vote_count
  belongs_to :commentable, polymorphic: true
  belongs_to :user
end