class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.string :subject
      t.text :obj_fund_vert
      t.text :obj_fund_transv
      t.text :contents
      t.text :activities

      t.timestamps
    end
  end
end
