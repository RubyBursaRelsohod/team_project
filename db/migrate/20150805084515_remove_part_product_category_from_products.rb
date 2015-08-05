class RemovePartProductCategoryFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :category_id, :string
  end
end
