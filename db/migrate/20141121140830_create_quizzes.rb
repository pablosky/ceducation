class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :subject
      t.references :classroom, index: true
      t.references :user, index: true
      t.text :lessons
      t.string :topics
      t.string :skill

      t.timestamps
    end
  end
end
