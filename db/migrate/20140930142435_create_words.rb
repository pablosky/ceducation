class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :definition
      t.string :word

      t.timestamps
    end
  end
end
