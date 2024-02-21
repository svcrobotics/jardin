class ModifyFamillesRemoveCategorieIdAddTypeId < ActiveRecord::Migration[7.1]
  def change
    remove_column :familles, :categorie_id, :integer # Adaptez le type si nécessaire
    add_column :familles, :type_id, :integer
    add_index :familles, :type_id
  end
end
