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

ActiveRecord::Schema.define(version: 20160413113959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_keys", force: :cascade do |t|
    t.string   "access_token"
    t.datetime "expires_at"
    t.integer  "expires_after"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "access_keys", ["user_id"], name: "index_access_keys_on_user_id", using: :btree

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "agendas", force: :cascade do |t|
    t.datetime "start_at"
    t.datetime "end_at"
    t.text     "content"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.date     "date"
    t.text     "body"
    t.string   "title"
    t.integer  "type"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "default_texts", force: :cascade do |t|
    t.string   "title"
    t.text     "content_one"
    t.text     "content_two"
    t.text     "content_three"
    t.text     "content_four"
    t.integer  "page"
    t.string   "image"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ladder_competities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "shot_against_id"
    t.integer  "u_five",                 default: 0
    t.integer  "u_four",                 default: 0
    t.integer  "u_three",                default: 0
    t.integer  "u_two",                  default: 0
    t.integer  "u_one",                  default: 0
    t.integer  "u_total_without_bonus",  default: 0
    t.integer  "u_total",                default: 0
    t.date     "shot_at"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "u_arrows_shot",          default: 0
    t.integer  "u_arrows_hit",           default: 0
    t.integer  "u_bonus",                default: 0
    t.integer  "sa_five",                default: 0
    t.integer  "sa_four",                default: 0
    t.integer  "sa_three",               default: 0
    t.integer  "sa_two",                 default: 0
    t.integer  "sa_one",                 default: 0
    t.integer  "sa_total_without_bonus", default: 0
    t.integer  "sa_total",               default: 0
    t.integer  "sa_arrows_shot",         default: 0
    t.integer  "sa_arrows_hit",          default: 0
    t.integer  "sa_bonus",               default: 0
  end

  add_index "ladder_competities", ["shot_against_id"], name: "index_ladder_competities_on_shot_against_id", using: :btree
  add_index "ladder_competities", ["user_id"], name: "index_ladder_competities_on_user_id", using: :btree

  create_table "ladder_rankings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "rank"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.decimal  "average",    precision: 6, scale: 2, default: 0.0
  end

  add_index "ladder_rankings", ["user_id"], name: "index_ladder_rankings_on_user_id", using: :btree

  create_table "rates", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.decimal  "price",       precision: 6, scale: 2, default: 0.0
    t.integer  "expires_in"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "adress"
    t.string   "tel_nr"
    t.integer  "hand"
    t.date     "birth_date"
    t.string   "address"
    t.string   "postal_code"
    t.string   "city"
    t.date     "member_since"
    t.integer  "nhb_number"
    t.integer  "weight"
    t.integer  "height"
    t.string   "avatar"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.text     "content"
    t.integer  "user_type",              default: 0
    t.integer  "functie"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "access_keys", "users"
end
