class DropCategories < ActiveRecord::Migration[7.1]
  def change
    drop_table :categories
  end
end
