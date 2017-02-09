class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :subtotal, precision: 10, scale: 3
      t.decimal :tax, precision: 10, scale: 3
      t.decimal :total, precision: 12, scale: 4

      t.timestamps
    end
  end
end
