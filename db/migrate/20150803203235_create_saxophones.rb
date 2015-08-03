class CreateSaxophones < ActiveRecord::Migration
  def change
    create_table :saxophones do |t|
      t.string :type
      t.string :tonality
      t.integer :keys_number
      t.string :low_key
      t.string :high_key
      t.float :bell_diametr
      t.boolean :bell_engraved
      t.string :body_material

      t.timestamps null: false
    end
  end
end
