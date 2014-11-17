class AddTranslationToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :translation, :string
  end
end
