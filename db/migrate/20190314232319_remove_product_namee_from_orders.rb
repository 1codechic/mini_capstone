class RemoveProductNameeFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :product_name, :string
  end
end
