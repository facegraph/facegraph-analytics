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

ActiveRecord::Schema.define(:version => 20101216062102) do

  create_table "controller_actions", :force => true do |t|
    t.string   "controller_action", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "controller_actions", ["controller_action"], :name => "index_controller_actions_on_controller_action", :unique => true

  create_table "user_logs", :force => true do |t|
    t.integer  "origin_identifier",                       :null => false
    t.integer  "friend_origin_identifier",                :null => false
    t.integer  "controller_action",                       :null => false
    t.integer  "count",                    :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_logs", ["controller_action"], :name => "index_user_logs_on_controller_action"
  add_index "user_logs", ["friend_origin_identifier"], :name => "index_user_logs_on_friend_origin_identifier"
  add_index "user_logs", ["origin_identifier"], :name => "index_user_logs_on_origin_identifier"

  create_table "users", :force => true do |t|
    t.string   "origin_identifier",                              :null => false
    t.string   "access_token"
    t.string   "first_name",        :limit => 20
    t.string   "last_name",         :limit => 20
    t.boolean  "sex"
    t.datetime "date_of_birth"
    t.string   "locale"
    t.float    "time_zone"
    t.integer  "login_count",                     :default => 0
    t.integer  "visit_count",                     :default => 0
    t.integer  "page_view_count",                 :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["origin_identifier"], :name => "index_users_on_origin_identifier", :unique => true

end
