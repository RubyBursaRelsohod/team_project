class AddProductsCategoriesRefToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :products_category, index: true, foreign_key: true
  end
end
