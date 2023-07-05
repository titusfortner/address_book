# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_01_21_004800) do

  create_table "addresses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "country"
    t.date "birthday"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "card"
    t.string "interests"
    t.string "phone"
    t.binary "file"
    t.string "website"
    t.integer "age"
    t.string "color"
    t.boolean "interest_climb"
    t.boolean "interest_dance"
    t.boolean "interest_read"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

  add_foreign_key "addresses", "users"
end
