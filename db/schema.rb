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

ActiveRecord::Schema.define(version: 2020_10_16_050033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "funds", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "amount"
    t.date "start_date"
    t.date "end_date"
    t.boolean "fund_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_funds_on_user_id"
  end

  create_table "item_listings", force: :cascade do |t|
    t.string "item_name"
    t.integer "price"
    t.text "description"
    t.boolean "item_status"
    t.bigint "user_id", null: false
    t.bigint "fund_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fund_id"], name: "index_item_listings_on_fund_id"
    t.index ["user_id"], name: "index_item_listings_on_user_id"
  end

  create_table "money_investments", force: :cascade do |t|
    t.integer "amount"
    t.bigint "fund_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fund_id"], name: "index_money_investments_on_fund_id"
    t.index ["user_id"], name: "index_money_investments_on_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "item_listing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_listing_id"], name: "index_stores_on_item_listing_id"
    t.index ["user_id"], name: "index_stores_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "funds", "users"
  add_foreign_key "item_listings", "funds"
  add_foreign_key "item_listings", "users"
  add_foreign_key "money_investments", "funds"
  add_foreign_key "money_investments", "users"
  add_foreign_key "stores", "item_listings"
  add_foreign_key "stores", "users"
end
