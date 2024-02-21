class AddColumnToFamille < ActiveRecord::Migration[7.1]
  def change
    add_column :familles, :plantation, :text
    add_column :familles, :temperature, :string
  end
end
