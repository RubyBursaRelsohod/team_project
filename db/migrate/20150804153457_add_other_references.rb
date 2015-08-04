class AddOtherReferences < ActiveRecord::Migration
  def change
    remove_column :orders, :status_id

    add_reference :pianos, :products, index: true, foreign_key: true
    add_reference :orders, :users, index: true, foreign_key: true
  end
end
