class AddProductsRefToGuitars < ActiveRecord::Migration
  def change
    add_reference :guitars, :product, index: true, foreign_key: true
  end
end
