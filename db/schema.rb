# encoding: UTF-8

# Current db schema
ActiveRecord::Schema.define(version: 201_508_031_458_45) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'order_statuses', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'orders', force: :cascade do |t|
    t.datetime 'delivery_date'
    t.datetime 'creation_date'
    t.string 'payment_type'
    t.boolean 'delivery_type'
    t.datetime 'created_at',    null: false
    t.datetime 'updated_at',    null: false
  end

  create_table 'pianos', force: :cascade do |t|
    t.string 'color'
    t.integer 'keys_number'
    t.string 'black_keys_surface'
    t.string 'white_keys_surface'
    t.boolean 'is_digital'
    t.datetime 'created_at',         null: false
    t.datetime 'updated_at',         null: false
  end
end
