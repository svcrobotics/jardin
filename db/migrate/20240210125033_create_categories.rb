class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :nom, null: false

      t.timestamps
    end
    add_index :categories, :nom, unique: true
  end
end
