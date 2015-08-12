class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :phone, null: false, default: ""
      t.string :address, null: false, default: ""

      t.timestamps null: false
    end
  end
end
