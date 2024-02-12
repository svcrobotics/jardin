class CreateTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :types do |t|
      t.string :nom, null: false

      t.timestamps
    end
    add_index :types, :nom, unique: true
  end
end
