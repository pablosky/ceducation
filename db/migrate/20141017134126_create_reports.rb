class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :reason
      t.references :lesson, index: true

      t.timestamps
    end
  end
end
