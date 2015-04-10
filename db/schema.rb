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

ActiveRecord::Schema.define(version: 20150410160905) do

  create_table "addresses", force: :cascade do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.decimal  "zip_code"
    t.decimal  "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["address1", "state", "zip_code"], name: "index_addresses_on_address1_and_state_and_zip_code"

  create_table "addresses_facilities", id: false, force: :cascade do |t|
    t.integer "facility_id", null: false
    t.integer "address_id",  null: false
  end

  add_index "addresses_facilities", ["address_id"], name: "index_addresses_facilities_on_address_id"
  add_index "addresses_facilities", ["facility_id"], name: "index_addresses_facilities_on_facility_id"

  create_table "addresses_user_profiles", id: false, force: :cascade do |t|
    t.integer "user_profile_id", null: false
    t.integer "address_id",      null: false
  end

  add_index "addresses_user_profiles", ["address_id"], name: "index_addresses_user_profiles_on_address_id"
  add_index "addresses_user_profiles", ["user_profile_id"], name: "index_addresses_user_profiles_on_user_profile_id"

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.string   "name",        limit: 45
    t.text     "description"
  end

  add_index "facilities", ["name"], name: "index_facilities_on_name"
  add_index "facilities", ["user_id", "created_at"], name: "index_facilities_on_user_id_and_created_at"

  create_table "facilities_users", id: false, force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "facility_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "user_profiles", force: :cascade do |t|
    t.string   "first_name", limit: 50
    t.string   "last_name",  limit: 50
    t.date     "dob"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_profiles", ["first_name", "last_name"], name: "index_user_profiles_on_first_name_and_last_name"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
