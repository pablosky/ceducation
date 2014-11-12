class Lesson < ActiveRecord::Base
  belongs_to :word
  belongs_to :user

  mount_uploader :sound, SoundFileUploader 
end
