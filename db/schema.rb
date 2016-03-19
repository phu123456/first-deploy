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

ActiveRecord::Schema.define(version: 20160318112335) do

  create_table "airs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "truck_id"
  end

  create_table "blowers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "truck_id"
  end

  create_table "coolants", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "truck_id"
  end

  create_table "engines", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "truck_id"
  end

  create_table "gears", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "truck_id"
  end

  create_table "maintenances", force: :cascade do |t|
    t.decimal  "engine_oil"
    t.decimal  "transmission_oil"
    t.decimal  "gear_oil"
    t.decimal  "air_filter"
    t.decimal  "water_coolant"
    t.decimal  "cement_blower"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "transmissions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "truck_id"
  end

  create_table "trips", force: :cascade do |t|
    t.date     "trip_date"
    t.text     "driver"
    t.decimal  "weight"
    t.boolean  "trip_type"
    t.decimal  "liter"
    t.decimal  "distance"
    t.float    "average"
    t.text     "cement"
    t.text     "destination"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "engine_id"
    t.integer  "transmission_id"
    t.integer  "gear_id"
    t.integer  "air_id"
    t.integer  "truck_id"
    t.integer  "coolant_id"
    t.integer  "blower_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.text     "plate"
    t.boolean  "bulker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.text     "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
