class AddOtherReferences < ActiveRecord::Migration
  def change
  	remove_column :orders, :user_id
    remove_column :orders, :status_id
    remove_column :pianos, :product_id

    add_reference :pianos, :products, index: true, foreign_key: true
    add_reference :orders, :users, index: true, foreign_key: true
  end
end
