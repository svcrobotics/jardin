class CreateFamilles < ActiveRecord::Migration[7.1]
  def change
    create_table :familles do |t|
      t.string :famille
      t.string :categorie
      t.string :origine
      t.text :arrosage
      t.text :substrat
      t.text :rempotage
      t.text :taille
      t.text :bouturage
      t.text :maladie

      t.timestamps
    end
  end
end
