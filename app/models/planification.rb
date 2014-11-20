class Planification < ActiveRecord::Base
  belongs_to :user
  belongs_to :program
  belongs_to :classroom
end
