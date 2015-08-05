class RemovePartProductFromOrdersProducts < ActiveRecord::Migration
  def change
    remove_column :orders_products, :product_id, :string
  end
end
