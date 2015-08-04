class RemoveColumnUserIdFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :user_id
    remove_column :pianos, :product_id
  end
end
