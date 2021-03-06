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

ActiveRecord::Schema.define(version: 20141221045159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chart_datasets", force: true do |t|
    t.integer  "chart_id"
    t.integer  "dataset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chart_topics", force: true do |t|
    t.integer  "topic_id"
    t.integer  "chart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chart_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charts", force: true do |t|
    t.text     "name",                         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chart_type_id",                null: false
    t.text     "colors"
    t.integer  "user_id",                      null: false
    t.boolean  "tooltip",       default: true
  end

  create_table "datasets", force: true do |t|
    t.text     "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",    null: false
  end

  create_table "quantities", force: true do |t|
    t.decimal  "number",           null: false
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unit_id"
    t.integer  "quantity_type_id"
    t.text     "notes"
    t.integer  "user_id"
    t.integer  "parent_id"
  end

  create_table "quantity_datasets", force: true do |t|
    t.integer  "quantity_id"
    t.integer  "dataset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quantity_sources", force: true do |t|
    t.integer  "quantity_id"
    t.integer  "source_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quantity_topics", force: true do |t|
    t.integer  "topic_id"
    t.integer  "quantity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quantity_types", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", force: true do |t|
    t.text     "URL"
    t.text     "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topic_connections", id: false, force: true do |t|
    t.integer "topic_a_id", null: false
    t.integer "topic_b_id", null: false
  end

  create_table "topics", force: true do |t|
    t.string   "name",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "units", force: true do |t|
    t.text     "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
