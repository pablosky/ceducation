class AddStudentsToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :students, :text
  end
end
