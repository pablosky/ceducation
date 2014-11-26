class Quiz < ActiveRecord::Base
  belongs_to :classroom
  belongs_to :user

  serialize :lessons 
end
