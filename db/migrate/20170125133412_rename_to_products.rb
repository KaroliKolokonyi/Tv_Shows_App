class RenameToProducts < ActiveRecord::Migration[5.0]
  def change
    rename_table :shows, :products
  end
end
