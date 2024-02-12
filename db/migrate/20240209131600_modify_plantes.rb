class ModifyPlantes < ActiveRecord::Migration[7.1]
  def change
    add_column :plantes, :observation, :text
    add_reference :plantes, :famille, foreign_key: true
    remove_column :plantes, :maladie
    remove_column :plantes, :bouturage
    remove_column :plantes, :taille 
    remove_column :plantes, :rempotage
    remove_column :plantes, :substrat
    remove_column :plantes, :arrosage
  end
end
