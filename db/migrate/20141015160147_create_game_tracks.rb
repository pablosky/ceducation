class CreateGameTracks < ActiveRecord::Migration
  def change
    create_table :game_tracks do |t|
      t.references :user, index: true
      t.integer :skillLevel
      t.integer :level1Points

      t.timestamps
    end
  end
end
