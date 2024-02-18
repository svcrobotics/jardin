class AddMoreDetailsToPlantes < ActiveRecord::Migration[7.1]
  def change
    add_column :plantes, :nom_scientifique, :string
    add_column :plantes, :arrosage_ete, :text
    add_column :plantes, :arrosage_hiver, :text
    add_column :plantes, :condition_ete, :string
    add_column :plantes, :condition_hiver, :string
    add_column :plantes, :sante, :text
    add_column :plantes, :probleme, :text
    add_column :plantes, :conseil, :text
    add_column :plantes, :besoin, :text
  end
end
