class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.float :price
      t.string :country
      t.string :company
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
