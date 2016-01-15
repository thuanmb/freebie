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

ActiveRecord::Schema.define(version: 20160114095208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaign_items", force: :cascade do |t|
    t.integer  "campaign_id"
    t.string   "name"
    t.integer  "target_qty"
    t.integer  "collected_qty"
    t.string   "label"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "campaign_items", ["campaign_id"], name: "index_campaign_items_on_campaign_id", using: :btree

  create_table "campaigns", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "image_url"
    t.string   "description"
    t.string   "status"
    t.date     "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "campaigns", ["user_id"], name: "index_campaigns_on_user_id", using: :btree

  create_table "donations", force: :cascade do |t|
    t.integer  "campaign_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "donations", ["campaign_id"], name: "index_donations_on_campaign_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.boolean  "unread"
    t.datetime "read_time"
    t.text     "images"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "participants", force: :cascade do |t|
    t.integer  "message_id"
    t.integer  "target_id"
    t.string   "target_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "participants", ["message_id"], name: "index_participants_on_message_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "location"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_admin"
    t.boolean  "is_organization"
    t.string   "avatar_url"
    t.text     "description"
    t.string   "contact_address"
    t.string   "contact_city"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["provider"], name: "index_users_on_provider", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid"], name: "index_users_on_uid", using: :btree

  add_foreign_key "campaign_items", "campaigns"
  add_foreign_key "campaigns", "users"
  add_foreign_key "donations", "campaigns"
  add_foreign_key "messages", "users"
  add_foreign_key "participants", "messages"
end
