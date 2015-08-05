class AddProductsToOrdersProducts < ActiveRecord::Migration
  def change
    add_reference :orders_products, :product, index: true, foreign_key: true
  end
end
