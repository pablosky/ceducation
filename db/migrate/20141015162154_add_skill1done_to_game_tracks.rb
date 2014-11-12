class AddSkill1doneToGameTracks < ActiveRecord::Migration
  def change
    add_column :game_tracks, :skill1done, :text
    
  end
end
