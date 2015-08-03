# Pianos migration
class CreatePianos < ActiveRecord::Migration
  def change
    create_table :pianos do |t|
      t.string :color
      t.integer :keys_number
      t.string :black_keys_surface
      t.string :white_keys_surface
      t.boolean :is_digital

      t.timestamps null: false
    end
  end
end
