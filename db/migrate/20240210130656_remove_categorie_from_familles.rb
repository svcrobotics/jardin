class RemoveCategorieFromFamilles < ActiveRecord::Migration[7.1]
  def change
    remove_column :familles, :categorie, :string
  end
end
