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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130602183153) do

  create_table "alerts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "applicants", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "applicants", ["user_id"], :name => "index_applicants_on_user_id"

  create_table "comings", :force => true do |t|
    t.string   "reason"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companions", :force => true do |t|
    t.string   "name"
    t.string   "relation"
    t.string   "birthdate"
    t.integer  "ticket_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "companions", ["ticket_id"], :name => "index_companions_on_ticket_id"

  create_table "decisions", :force => true do |t|
    t.integer  "number"
    t.integer  "request_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "decisions", ["request_id"], :name => "index_decisions_on_request_id"

  create_table "leaves", :force => true do |t|
    t.string   "reason"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "passports", :force => true do |t|
    t.integer  "passportable_id"
    t.string   "passportable_type"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "passports", ["passportable_id", "passportable_type"], :name => "index_passports_on_passportable_id_and_passportable_type"

  create_table "requests", :force => true do |t|
    t.boolean  "accepted"
    t.integer  "applicant_id"
    t.integer  "requestable_id"
    t.string   "requestable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "requests", ["applicant_id"], :name => "index_requests_on_applicant_id"
  add_index "requests", ["requestable_id", "requestable_type"], :name => "index_requests_on_requestable_id_and_requestable_type"

  create_table "tickets", :force => true do |t|
    t.string   "line"
    t.string   "number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.boolean  "admin"
    t.integer  "location_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["location_id"], :name => "index_users_on_location_id"

  create_table "vacations", :force => true do |t|
    t.integer  "duration"
    t.string   "from"
    t.string   "to"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
