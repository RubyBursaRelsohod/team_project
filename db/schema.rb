# encoding: UTF-8
ActiveRecord::Schema.define(version: 20150803151703) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guitars", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "frets"
    t.integer  "chords"
    t.string   "dimentions"
    t.integer  "weight"
    t.boolean  "is_digital"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.float    "price"
    t.string   "country"
    t.string   "company"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
