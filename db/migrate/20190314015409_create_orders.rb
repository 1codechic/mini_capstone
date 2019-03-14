class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.decimal :price, precision: 9, scale: 2
      t.integer :quantity
      t.decimal :subtotal, precision: 9, scale: 2
      t.decimal :tax, precision: 9, scale: 2
      t.decimal :tax, precision: 9, scale: 2
      t.integer :customer_id
      t.string :product_name

      t.timestamps
    end
  end
end
