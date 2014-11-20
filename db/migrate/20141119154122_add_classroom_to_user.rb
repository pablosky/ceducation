class AddClassroomToUser < ActiveRecord::Migration
  def change
    add_column :users, :classrooms, :text
  end
end
