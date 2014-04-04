class Acomment < ActiveRecord::Base
  attr_accessible :content
  belongs_to :answer
end
