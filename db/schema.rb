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

ActiveRecord::Schema.define(version: 20150225153508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "professionals", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professionals", ["email"], name: "index_professionals_on_email", unique: true, using: :btree
  add_index "professionals", ["reset_password_token"], name: "index_professionals_on_reset_password_token", unique: true, using: :btree

  create_table "professions", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
    t.text     "role"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.text     "info"
    t.text     "full_description"
    t.text     "work_address"
    t.string   "company"
    t.boolean  "verified"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "professional_id"
    t.integer  "profession_id"
    t.text     "academic_back"
    t.text     "req_quals"
    t.text     "req_skills"
    t.text     "motivation"
    t.text     "suitability"
    t.text     "expectations"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "profiles", ["profession_id"], name: "index_profiles_on_profession_id", using: :btree
  add_index "profiles", ["professional_id"], name: "index_profiles_on_professional_id", using: :btree

  create_table "students", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "profiles", "professionals"
  add_foreign_key "profiles", "professions"
end
