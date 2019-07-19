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

ActiveRecord::Schema.define(version: 20190719022301) do

  create_table "rentals", force: :cascade do |t|
    t.string   "property"
    t.integer  "rent"
    t.string   "address"
    t.integer  "age"
    t.text     "remarks"
    t.string   "route_a"
    t.string   "station_a"
    t.integer  "minutes_a"
    t.string   "route_b"
    t.string   "station_b"
    t.integer  "minutes_b"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "route_name"
    t.string   "station_name"
    t.integer  "walking_minutes"
    t.integer  "rental_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["rental_id"], name: "index_stations_on_rental_id"
  end

end
