class AddDetailsToPlantes < ActiveRecord::Migration[7.1]
  def change
    add_column :plantes, :conseil_expert, :text
  end
end
