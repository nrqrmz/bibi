# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_18_225817) do

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "photos"
    t.string "product_title"
    t.string "category"
    t.string "sub_category"
    t.string "product_type"
    t.integer "product_value"
    t.integer "daily_price"
    t.integer "weekly_price"
    t.integer "monthly_price"
    t.string "description"
    t.integer "rating"
    t.integer "reviews_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reviews_id"], name: "index_products_on_reviews_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.integer "category_id", null: false
    t.string "subcategory_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "name"
    t.string "paterno"
    t.string "materno"
    t.integer "cellphone"
    t.string "profile_picture"
    t.string "photo_id"
    t.string "about"
    t.string "user_type"
    t.string "rfc"
    t.integer "credit_card"
    t.integer "debit_card"
    t.string "dropoff_location"
    t.date "birthdate"
    t.string "google_id"
    t.string "status"
    t.integer "request_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["request_id"], name: "index_users_on_request_id"
  end

  add_foreign_key "products", "reviews", column: "reviews_id"
  add_foreign_key "products", "users"
  add_foreign_key "subcategories", "categories"
  add_foreign_key "users", "requests"
end
