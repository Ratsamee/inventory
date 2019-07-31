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

ActiveRecord::Schema.define(version: 2019_07_31_123943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.text "code"
    t.text "name"
    t.text "description"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "address"
    t.text "phone_number"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.text "code"
    t.date "received_date"
    t.integer "product_id"
    t.float "cost"
    t.float "rpp"
    t.integer "quantity"
    t.integer "qty_on_hand"
    t.integer "user_id"
    t.text "bin_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.text "code"
    t.text "name"
    t.text "dimension"
    t.text "style"
    t.text "description"
    t.text "brand"
    t.text "image"
    t.text "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receives", force: :cascade do |t|
    t.text "code"
    t.date "received_date"
    t.integer "product_id"
    t.float "cost"
    t.float "rpp"
    t.integer "quantity"
    t.integer "qty_on_hand"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "bin_location"
  end

  create_table "receivings", force: :cascade do |t|
    t.text "code"
    t.date "received_date"
    t.integer "product_id"
    t.float "cost"
    t.float "rpp"
    t.integer "quantity"
    t.integer "qty_on_hand"
    t.integer "user_id"
    t.text "bin_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "email"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
