class CreateProductsCategories < ActiveRecord::Migration
  def change
    create_table :products_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
