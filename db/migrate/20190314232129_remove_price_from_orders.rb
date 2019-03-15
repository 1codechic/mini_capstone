class RemovePriceFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :price, :decimal, precision: 9, scale: 2
  end
end
