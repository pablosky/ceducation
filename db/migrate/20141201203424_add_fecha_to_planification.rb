class AddFechaToPlanification < ActiveRecord::Migration
  def change
    add_column :planifications, :fecha, :date
  end
end
