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

ActiveRecord::Schema.define(version: 20131121175414) do

  create_table "archives", force: true do |t|
    t.string    "name"
    t.string    "title"
    t.text      "body"
    t.timestamp "publish_at"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "slug"
    t.string    "asset_file_name"
    t.string    "asset_content_type"
    t.integer   "asset_file_size"
    t.timestamp "asset_updated_at"
  end

  add_index "archives", ["slug"], name: "index_archives_on_slug"

  create_table "events", force: true do |t|
    t.datetime "happening"
    t.text     "description"
    t.string   "guest"
    t.text     "guest_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text      "message"
    t.string    "username"
    t.integer   "item"
    t.string    "table"
    t.integer   "month"
    t.integer   "year"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

  create_table "users", force: true do |t|
    t.string    "name"
    t.string    "email"
    t.string    "provider"
    t.string    "uid"
    t.timestamp "created_at",                          null: false
    t.timestamp "updated_at",                          null: false
    t.string    "encrypted_password",     default: "", null: false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",          default: 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
