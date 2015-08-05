class AddOtherReferences < ActiveRecord::Migration
  def change
    remove_column :orders, :status_id

    # add_reference :pianos, :product, index: true, foreign_key: true
    # add_reference :orders, :user, index: true, foreign_key: true
  end
end
