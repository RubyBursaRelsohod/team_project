class AddStatusIdAndUserIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :user_id, :integer
    add_column :orders, :status_id, :integer
  end
end
