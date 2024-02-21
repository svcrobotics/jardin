class AddCoordinatesToPlantes < ActiveRecord::Migration[7.1]
  def change
    add_column :plantes, :latitude, :float
    add_column :plantes, :longitude, :float
  end
end
