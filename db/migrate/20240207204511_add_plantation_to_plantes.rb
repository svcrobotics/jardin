class AddPlantationToPlantes < ActiveRecord::Migration[7.1]
  def change
    add_column :plantes, :plantation, :text
  end
end
