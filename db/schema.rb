# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150805065835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "product_id"
  end

  add_index "comments", ["product_id"], name: "index_comments_on_product_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

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

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "delivery_date"
    t.datetime "creation_date"
    t.string   "payment_type"
    t.boolean  "delivery_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "order_status_id"
    t.integer  "users_id"
  end

  add_index "orders", ["order_status_id"], name: "index_orders_on_order_status_id", using: :btree
  add_index "orders", ["users_id"], name: "index_orders_on_users_id", using: :btree

  create_table "orders_products", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pianos", force: :cascade do |t|
    t.string   "color"
    t.integer  "keys_number"
    t.string   "black_keys_surface"
    t.string   "white_keys_surface"
    t.boolean  "is_digital"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "products_id"
  end

  add_index "pianos", ["products_id"], name: "index_pianos_on_products_id", using: :btree

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

  create_table "saxophones", force: :cascade do |t|
    t.string   "type"
    t.string   "tonality"
    t.integer  "keys_number"
    t.string   "low_key"
    t.string   "high_key"
    t.float    "bell_diametr"
    t.boolean  "bell_engraved"
    t.string   "body_material"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "product_id"
  end

  add_index "saxophones", ["product_id"], name: "index_saxophones_on_product_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "violins", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "weight"
    t.string   "body_material"
    t.string   "size"
    t.integer  "string_count"
    t.boolean  "bow_included"
    t.string   "color"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "comments", "products"
  add_foreign_key "comments", "users"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "saxophones", "products"
end
