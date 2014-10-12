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

ActiveRecord::Schema.define(version: 20141012095352) do

  create_table "dogs", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "breed"
    t.string   "gender"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "images", force: true do |t|
    t.string   "fileName"
    t.integer  "dog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "start"
    t.string   "end"
    t.float    "longitude"
    t.float    "latitude"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "user_id"
    t.integer  "recipient_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["user_id", "created_at"], name: "index_messages_on_user_id_and_created_at"

  create_table "places", force: true do |t|
    t.string   "name"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "email"
    t.string   "birthday"
    t.string   "location"
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
    t.string   "token"
    t.string   "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "widgets", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
