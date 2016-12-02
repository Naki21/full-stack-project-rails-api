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

ActiveRecord::Schema.define(version: 20161202210606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barracks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "fighter_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "battle_id"
    t.string   "current_fighter"
  end

  add_index "barracks", ["battle_id"], name: "index_barracks_on_battle_id", using: :btree
  add_index "barracks", ["fighter_id"], name: "index_barracks_on_fighter_id", using: :btree
  add_index "barracks", ["user_id"], name: "index_barracks_on_user_id", using: :btree

  create_table "battles", force: :cascade do |t|
    t.integer  "f_val"
    t.integer  "u_val"
    t.integer  "barrack_id"
    t.string   "opponent"
    t.boolean  "win?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "battles", ["barrack_id"], name: "index_battles_on_barrack_id", using: :btree

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "fighters", force: :cascade do |t|
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "barracks", "battles"
  add_foreign_key "barracks", "fighters"
  add_foreign_key "barracks", "users"
  add_foreign_key "battles", "barracks"
  add_foreign_key "examples", "users"
end
