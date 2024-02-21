class AddDetailsToFamilles < ActiveRecord::Migration[7.1]
  def change
    add_column :familles, :origine_precise, :text
    add_column :familles, :temperature_precise, :text
  end
end
