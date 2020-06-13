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

ActiveRecord::Schema.define(version: 2020_06_13_204528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "bikes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "model"
    t.string "status", default: "active", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["status"], name: "index_bikes_on_status"
  end

  create_table "billing_history", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "billing_plan_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["billing_plan_id"], name: "index_billing_history_on_billing_plan_id"
    t.index ["user_id"], name: "index_billing_history_on_user_id"
  end

  create_table "billing_plans", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.string "recurrence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "history", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.bigint "station_id"
    t.bigint "bike_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bike_id"], name: "index_history_on_bike_id"
    t.index ["station_id"], name: "index_history_on_station_id"
    t.index ["user_id"], name: "index_history_on_user_id"
  end

  create_table "slots", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.bigint "station_id"
    t.bigint "bike_id"
    t.integer "number", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bike_id"], name: "index_slots_on_bike_id"
    t.index ["id", "number"], name: "index_slot_number_uniqueness", unique: true
    t.index ["station_id"], name: "index_slots_on_station_id"
  end

  create_table "stations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "status", default: "active"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_stations_on_name", unique: true
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "fullname"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
