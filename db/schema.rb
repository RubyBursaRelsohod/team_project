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

ActiveRecord::Schema.define(version: 20150819120011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

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
    t.integer  "frets"
    t.integer  "chords"
    t.float    "dimensions"
    t.integer  "weight"
    t.boolean  "is_digital"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "product_id"
  end

  add_index "guitars", ["product_id"], name: "index_guitars_on_product_id", using: :btree

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "delivery_date"
    t.datetime "creation_date"
    t.string   "payment_type"
    t.string   "delivery_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "order_status_id"
    t.integer  "user_id"
  end

  add_index "orders", ["order_status_id"], name: "index_orders_on_order_status_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "orders_products", force: :cascade do |t|
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "product_id"
    t.integer  "order_id"
  end

  add_index "orders_products", ["order_id"], name: "index_orders_products_on_order_id", using: :btree
  add_index "orders_products", ["product_id"], name: "index_orders_products_on_product_id", using: :btree

  create_table "pianos", force: :cascade do |t|
    t.string   "color"
    t.integer  "keys_number"
    t.string   "black_keys_surface"
    t.string   "white_keys_surface"
    t.boolean  "is_digital"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "product_id"
  end

  add_index "pianos", ["product_id"], name: "index_pianos_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.string   "country"
    t.string   "company"
    t.integer  "quantity"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "products_category_id"
  end

  add_index "products", ["products_category_id"], name: "index_products_on_products_category_id", using: :btree

  create_table "products_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products_photos", force: :cascade do |t|
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "product_id"
  end

  add_index "products_photos", ["product_id"], name: "index_products_photos_on_product_id", using: :btree

  create_table "saxophones", force: :cascade do |t|
    t.string   "saxophone_type"
    t.string   "tonality"
    t.integer  "keys_number"
    t.string   "low_key"
    t.string   "high_key"
    t.float    "bell_diametr"
    t.boolean  "bell_engraved"
    t.string   "body_material"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "product_id"
  end

  add_index "saxophones", ["product_id"], name: "index_saxophones_on_product_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "phone",                  default: "", null: false
    t.string   "address",                default: "", null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "violins", force: :cascade do |t|
    t.integer  "weight"
    t.string   "body_material"
    t.string   "size"
    t.integer  "string_count"
    t.boolean  "bow_included"
    t.string   "color"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "product_id"
  end

  add_index "violins", ["product_id"], name: "index_violins_on_product_id", using: :btree

  add_foreign_key "comments", "products"
  add_foreign_key "comments", "users"
  add_foreign_key "guitars", "products"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "users"
  add_foreign_key "orders_products", "orders"
  add_foreign_key "orders_products", "products"
  add_foreign_key "pianos", "products"
  add_foreign_key "products", "products_categories"
  add_foreign_key "products_photos", "products"
  add_foreign_key "saxophones", "products"
  add_foreign_key "violins", "products"
end
