class ModifyFamilles < ActiveRecord::Migration[7.1]
  def change
    add_column :familles, :nom, :string, null: false
    add_index :familles, :nom, unique: true
    add_reference :familles, :categorie, null: true, foreign_key: true
    remove_column :familles, :famille, :string
  end
end
