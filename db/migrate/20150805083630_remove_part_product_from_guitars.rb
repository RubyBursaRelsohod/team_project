class RemovePartProductFromGuitars < ActiveRecord::Migration
  def change
    remove_column :guitars, :product_id, :string
  end
end
