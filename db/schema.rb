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

ActiveRecord::Schema.define(version: 20140125183754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "features", force: true do |t|
    t.string   "title"
    t.integer  "spid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "features", ["spid"], name: "index_features_on_spid", using: :btree

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "spid"
    t.text     "opening"
    t.text     "menu"
    t.text     "telephones"
    t.boolean  "disabled",       default: false
    t.integer  "features_array", default: [],    array: true
    t.decimal  "latitude"
    t.decimal  "longitude"
  end

  add_index "restaurants", ["features_array"], name: "index_restaurants_on_features_array", using: :gin
  add_index "restaurants", ["latitude", "longitude"], name: "index_restaurants_on_latitude_and_longitude", using: :btree
  add_index "restaurants", ["spid"], name: "index_restaurants_on_spid", using: :btree

end
