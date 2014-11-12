class ChangeSkillLevelToGametrack < ActiveRecord::Migration

  def change

  	change_column :game_tracks, :skillLevel, :string
  end
end
