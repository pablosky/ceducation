class GameTrack < ActiveRecord::Base
  belongs_to :user

  serialize :completedLessons
  serialize :uncompletedLessons
end
