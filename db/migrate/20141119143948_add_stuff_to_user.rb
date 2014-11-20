class AddStuffToUser < ActiveRecord::Migration
  def change
    add_column :users, :likes, :string
    add_column :users, :role, :string
  end
end
