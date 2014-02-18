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

ActiveRecord::Schema.define(version: 20140217222135) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moves", force: true do |t|
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "min_price"
    t.integer  "max_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "moves", ["user_id"], name: "index_moves_on_user_id"

  create_table "neighbhood_preferences", force: true do |t|
    t.integer  "neighborhood_id"
    t.integer  "move_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "neighbhood_preferences", ["move_id"], name: "index_neighbhood_preferences_on_move_id"
  add_index "neighbhood_preferences", ["neighborhood_id"], name: "index_neighbhood_preferences_on_neighborhood_id"

  create_table "neighborhoods", force: true do |t|
    t.integer  "city_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "neighborhoods", ["city_id"], name: "index_neighborhoods_on_city_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "age"
    t.string   "gender"
    t.string   "university"
    t.integer  "grad_year"
    t.string   "occupation"
    t.string   "company"
  end

end
