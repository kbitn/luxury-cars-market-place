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

ActiveRecord::Schema.define(version: 2019_11_15_095340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "status", default: "pending"
    t.bigint "user_id"
    t.bigint "car_id"
    t.integer "renting_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "starts_at"
    t.string "ends_at"
    t.index ["car_id"], name: "index_bookings_on_car_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.bigint "user_id"
    t.string "brand"
    t.integer "price_per_hour"
    t.integer "price_per_day"
    t.integer "milage"
    t.string "plate_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "car_model"
    t.integer "seats"
    t.string "location"
    t.integer "max_distance_before_charging"
    t.string "description"
    t.string "owner_conditions"
    t.string "combustion"
    t.string "transmission"
    t.string "accessories"
    t.integer "year"
    t.string "photo"
    t.float "latitude"
    t.float "longitude"
    t.string "body_type"
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "rating"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
    t.string "full_name"
    t.string "role"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "cars"
  add_foreign_key "bookings", "users"
  add_foreign_key "cars", "users"
  add_foreign_key "reviews", "bookings"
end
