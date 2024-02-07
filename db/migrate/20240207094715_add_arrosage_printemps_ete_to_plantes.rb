class AddArrosagePrintempsEteToPlantes < ActiveRecord::Migration[7.1]
  def change
    add_column :plantes, :arrosage_printemps_ete, :text
  end
end
