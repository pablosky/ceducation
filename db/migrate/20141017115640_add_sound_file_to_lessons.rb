class AddSoundFileToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :sound, :string
  end
end
