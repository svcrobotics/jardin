class CreatePlantes < ActiveRecord::Migration[7.1]
  def change
    create_table :plantes do |t|
      t.string :nom
      t.string :image_url
      t.text :arrosage
      t.string :origine
      t.text :rempotage
      t.text :maladie
      t.string :categorie
      t.string :temperature
      t.text :substrat
      t.text :taille
      t.text :bouturage

      t.timestamps
    end
  end
end
