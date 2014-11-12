class RemoveAndAddToGameTrack < ActiveRecord::Migration
  def change

  	add_column :game_tracks,  :uncompletedLessons, :text
    rename_column :game_tracks, :skill1done, :completedLessons
    rename_column :game_tracks, :level1Points, :levelPoints
    add_column :game_tracks,  :currentPoints, :integer

    
  end
end
