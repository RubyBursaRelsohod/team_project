class AddReferenceOrderToOrdersProducts < ActiveRecord::Migration
  def change
    remove_column :orders_products, :order_id, :integer
    add_reference :orders_products, :order, index: true, foreign_key: true
  end
end
