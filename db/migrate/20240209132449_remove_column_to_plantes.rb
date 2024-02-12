class RemoveColumnToPlantes < ActiveRecord::Migration[7.1]
  def change
    remove_column :plantes, :arrosage_printemps_ete
    remove_column :plantes, :arrosage_hiver
    remove_column :plantes, :categorie
    remove_column :plantes, :origine
    remove_column :plantes, :temperature
  end
end
