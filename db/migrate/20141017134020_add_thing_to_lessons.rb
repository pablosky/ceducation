class AddThingToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :posneg, :string
    add_column :lessons, :skillLevel, :string
  end
end
