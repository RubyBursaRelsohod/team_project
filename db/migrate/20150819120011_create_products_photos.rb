class CreateProductsPhotos < ActiveRecord::Migration
  def change
    create_table :products_photos do |t|
      t.attachment :photo

      t.timestamps null: false
    end
    add_reference :products_photos, :product, index: true, foreign_key: true
  end
end
