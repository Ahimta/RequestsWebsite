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

ActiveRecord::Schema.define(:version => 20130527015619) do

  create_table "alerts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "alerts", ["title"], :name => "index_alerts_on_title"

  create_table "applicants", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "applicants", ["user_id"], :name => "index_applicants_on_user_id"

  create_table "comings", :force => true do |t|
    t.string   "reason"
    t.integer  "request_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comings", ["request_id"], :name => "index_comings_on_request_id"

  create_table "companions", :force => true do |t|
    t.string   "name"
    t.string   "relation"
    t.string   "birthdate"
    t.integer  "ticket_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "companions", ["ticket_id"], :name => "index_companions_on_ticket_id"

  create_table "leaves", :force => true do |t|
    t.string   "reason"
    t.integer  "request_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "leaves", ["request_id"], :name => "index_leaves_on_request_id"

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "requests", :force => true do |t|
    t.boolean  "accepted"
    t.string   "rtype"
    t.integer  "applicant_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "requests", ["applicant_id"], :name => "index_requests_on_applicant_id"

  create_table "tickets", :force => true do |t|
    t.string   "line"
    t.string   "number"
    t.integer  "request_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tickets", ["request_id"], :name => "index_tickets_on_request_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.integer  "location_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["username", "location_id"], :name => "index_users_on_username_and_location_id"

  create_table "vacations", :force => true do |t|
    t.integer  "duration"
    t.string   "from"
    t.string   "to"
    t.integer  "request_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "vacations", ["request_id"], :name => "index_vacations_on_request_id"

end
