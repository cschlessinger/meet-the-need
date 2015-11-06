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

ActiveRecord::Schema.define(version: 20151103190635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.text     "body"
    t.boolean  "read",         default: false
    t.integer  "developer_id"
    t.integer  "customer_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "initiated_by"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "avatar_url",             default: "default-avatar.png"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "email",                  default: "",                   null: false
    t.string   "encrypted_password",     default: "",                   null: false
    t.string   "first_name",                                            null: false
    t.string   "last_name",                                             null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.text     "bio"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true, using: :btree
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree

  create_table "developer_technologies", force: :cascade do |t|
    t.integer  "developer_id"
    t.integer  "technology_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "developer_topics", force: :cascade do |t|
    t.integer  "developer_id"
    t.integer  "topic_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "developers", force: :cascade do |t|
    t.string   "tagline"
    t.text     "bio"
    t.string   "avatar_url",             default: "default-avatar.png"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "email",                  default: "",                   null: false
    t.string   "encrypted_password",     default: "",                   null: false
    t.string   "first_name",                                            null: false
    t.string   "last_name",                                             null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "developers", ["email"], name: "index_developers_on_email", unique: true, using: :btree
  add_index "developers", ["reset_password_token"], name: "index_developers_on_reset_password_token", unique: true, using: :btree

  create_table "project_technologies", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "technology_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "project_topics", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "cost"
    t.boolean  "is_completed"
    t.datetime "completed_date"
    t.datetime "assigned_date"
    t.integer  "customer_id"
    t.string   "developer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "developer_id"
    t.integer  "project_id"
    t.integer  "customer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "review_requests", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "customer_id"
    t.integer  "developer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "technologies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
