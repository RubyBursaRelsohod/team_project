class AddProductsToViolins < ActiveRecord::Migration
  def change
    add_reference :violins, :products, index: true, foreign_key: true
  end
end
