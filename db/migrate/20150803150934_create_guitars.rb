class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.integer :product_id
      t.integer :frets
      t.integer :chords
      t.string :dimentions
      t.integer :weight
      t.boolean :is_digital

      t.timestamps null: false
    end
  end
end
