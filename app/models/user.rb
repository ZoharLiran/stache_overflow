class User < ActiveRecord::Base
  has_many :authorizations
  attr_accessible :name, :email, :phone
  has_many :questions
  has_many :answers
  has_many :comments

  def self.create_from_hash!(hash)
    create(name: hash['screen_name'])
  end
end