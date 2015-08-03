# Orders migration
class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :delivery_date
      t.datetime :creation_date
      t.string :payment_type
      t.boolean :delivery_type

      t.timestamps null: false
    end
  end
end
