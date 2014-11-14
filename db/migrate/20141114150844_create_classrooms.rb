class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :class_name
      t.references :school, index: true
      t.integer :teacher_id

      t.timestamps
    end
  end
end
