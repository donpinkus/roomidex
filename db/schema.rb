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

ActiveRecord::Schema.define(version: 20140312233606) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conversations", force: true do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "moves", force: true do |t|
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "min_price"
    t.integer  "max_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id"
  end

  add_index "moves", ["city_id"], name: "index_moves_on_city_id"
  add_index "moves", ["user_id"], name: "index_moves_on_user_id"

  create_table "neighborhood_preferences", force: true do |t|
    t.integer  "neighborhood_id"
    t.integer  "move_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "neighborhood_preferences", ["move_id"], name: "index_neighborhood_preferences_on_move_id"
  add_index "neighborhood_preferences", ["neighborhood_id"], name: "index_neighborhood_preferences_on_neighborhood_id"

  create_table "neighborhoods", force: true do |t|
    t.integer  "city_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "neighborhoods", ["city_id"], name: "index_neighborhoods_on_city_id"

  create_table "notifications", force: true do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "notification_code"
    t.string   "attachment"
    t.boolean  "global",               default: false
    t.datetime "expires"
  end

  add_index "notifications", ["conversation_id"], name: "index_notifications_on_conversation_id"

  create_table "receipts", force: true do |t|
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "receipts", ["notification_id"], name: "index_receipts_on_notification_id"


  create_table "roomidex_relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roomidex_relationships", ["user_id"], name: "index_roomidex_relationships_on_user_id"

  create_table "roomidex_requests", force: true do |t|
    t.integer  "user_id"
    t.integer  "receiver_id"
    t.boolean  "accepted"
    t.boolean  "ignored"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roomidex_requests", ["receiver_id"], name: "index_roomidex_requests_on_receiver_id"
  add_index "roomidex_requests", ["user_id"], name: "index_roomidex_requests_on_user_id"

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
