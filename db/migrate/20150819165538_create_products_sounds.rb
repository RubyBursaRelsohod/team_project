class CreateProductsSounds < ActiveRecord::Migration
  def change
    create_table :products_sounds do |t|
      t.attachment :sound

      t.timestamps null: false
    end
    add_reference :products_sounds, :product, index: true, foreign_key: true
  end
end
