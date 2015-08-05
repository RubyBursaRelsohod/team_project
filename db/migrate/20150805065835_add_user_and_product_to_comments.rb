class AddUserAndProductToComments < ActiveRecord::Migration
  def change
    remove_column :comments, :user_id, :integer
    remove_column :comments, :product_id, :integer
    add_reference :comments, :user, index: true, foreign_key: true
    add_reference :comments, :product, index: true, foreign_key: true
  end
end
