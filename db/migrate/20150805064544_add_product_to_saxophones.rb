class AddProductToSaxophones < ActiveRecord::Migration
  def change
    add_reference :saxophones, :product, index: true, foreign_key: true
  end
end
