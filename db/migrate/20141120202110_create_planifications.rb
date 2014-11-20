class CreatePlanifications < ActiveRecord::Migration
  def change
    create_table :planifications do |t|
      t.references :user, index: true
      t.references :program, index: true
      t.string :subject
      t.string :teach_time
      t.references :classroom, index: true
      t.text :obj_fund_vert
      t.text :obj_fund_transv
      t.text :contents
      t.text :expect_learn
      t.text :activ

      t.timestamps
    end
  end
end
