class RemovePartProductFromViolin < ActiveRecord::Migration
  def change
    remove_column :violins, :product_id, :string
  end
end
