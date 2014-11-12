class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :name
      t.text :ttext
      t.date :date

      t.timestamps
    end
  end
end
