class CreateOrdersProducts < ActiveRecord::Migration
  def change
    create_table :orders_products do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
