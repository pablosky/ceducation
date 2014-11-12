class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :answer
      t.string :category
      t.text :content
      t.string :distract1
      t.string :distract2
      t.string :distract3
      t.string :photo
      t.string :question
      t.string :tags
      t.references :word, index: true

      t.timestamps
    end
  end
end
