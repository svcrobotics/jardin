class AdjustPlantes < ActiveRecord::Migration[7.1]
  def change
    # Suppression de la colonne plantation
    remove_column :plantes, :plantation, :text

    # Ajout de la contrainte null: false à la colonne nom s'il n'y en a pas déjà
    change_column_null :plantes, :nom, false

    # Ajout d'un index unique sur la colonne nom
    # Assurez-vous d'abord que tous les noms existants dans la base sont uniques ou cette partie échouera
    add_index :plantes, :nom, unique: true
  end
end
