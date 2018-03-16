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

ActiveRecord::Schema.define(version: 20180316205138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parking_areas", force: :cascade do |t|
    t.string "parking_area_name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "lot_id"
    t.integer "total_spaces_available"
    t.integer "total_accessible_spaces"
    t.text "parking_area_information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.text "reservation_status"
    t.bigint "spot_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_id"], name: "index_reservations_on_spot_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "spots", force: :cascade do |t|
    t.string "label"
    t.boolean "occupied"
    t.boolean "accessible"
    t.text "spot_information"
    t.bigint "parking_area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parking_area_id"], name: "index_spots_on_parking_area_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "license_plate"
    t.string "password_digest"
    t.string "email"
    t.string "billing_address"
    t.string "card_holder_name"
    t.integer "credit_card_number"
    t.datetime "expiry_date"
    t.integer "cvc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reservations", "spots"
  add_foreign_key "reservations", "users"
  add_foreign_key "spots", "parking_areas"
end
