class AddExpToProgram < ActiveRecord::Migration
  def change
    add_column :programs, :exp_learn, :text
  end
end
