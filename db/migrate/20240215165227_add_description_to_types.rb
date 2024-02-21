class AddDescriptionToTypes < ActiveRecord::Migration[7.1]
  def change
    add_column :types, :description, :text
    add_column :types, :caracteristique, :text
  end
end
