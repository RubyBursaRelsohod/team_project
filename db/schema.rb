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
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pianos", force: :cascade do |t|
    t.string   "color"
    t.integer  "keys_number"
    t.string   "black_keys_surface"
    t.string   "white_keys_surface"
    t.boolean  "is_digital"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
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

end
