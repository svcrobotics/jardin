class RenameArrosageToArrosageHiverInPlantes < ActiveRecord::Migration[7.1]
  def change
    rename_column :plantes, :arrosage, :arrosage_hiver
  end
end
