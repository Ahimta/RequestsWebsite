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

ActiveRecord::Schema.define(:version => 20130523141846) do

  create_table "alerts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "alerts", ["title"], :name => "index_alerts_on_title"

  create_table "comings", :force => true do |t|
    t.string   "applicant"
    t.string   "reason"
    t.boolean  "accepted"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comings", ["user_id"], :name => "index_comings_on_user_id"

  create_table "leaves", :force => true do |t|
    t.string   "applicant"
    t.string   "reason"
    t.boolean  "accepted"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "leaves", ["user_id"], :name => "index_leaves_on_user_id"

  create_table "tickets", :force => true do |t|
    t.string   "applicant"
    t.string   "line"
    t.string   "number"
    t.boolean  "accepted"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tickets", ["user_id"], :name => "index_tickets_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "location"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["username", "password_digest"], :name => "index_users_on_username_and_password_digest"

  create_table "vacations", :force => true do |t|
    t.boolean  "accepted"
    t.string   "applicant"
    t.integer  "duration"
    t.string   "from"
    t.string   "to"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "vacations", ["user_id"], :name => "index_vacations_on_user_id"

end
