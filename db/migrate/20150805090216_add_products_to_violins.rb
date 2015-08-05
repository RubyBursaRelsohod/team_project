class AddProductsToViolins < ActiveRecord::Migration
  def change
    add_reference :violins, :product, index: true, foreign_key: true
  end
end
