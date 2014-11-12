class AddNameToGameTrack < ActiveRecord::Migration
  def change
    add_column :game_tracks, :gameName, :string
  end
end
