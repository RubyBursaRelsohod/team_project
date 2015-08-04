class CreateViolins < ActiveRecord::Migration
  def change
    create_table :violins do |t|
      t.integer :product_id
      t.integer :weight
      t.string :body_material
      t.string :size
      t.integer :string_count
      t.boolean :bow_included
      t.string :color

      t.timestamps null: false
    end
  end
end
