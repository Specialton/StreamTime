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

ActiveRecord::Schema.define(:version => 20120825203104) do

  create_table "assignment_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "availablities", :force => true do |t|
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "contact_infos", :force => true do |t|
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "duties", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.integer  "location_id"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "events", ["location_id"], :name => "index_events_on_location_id"

  create_table "job_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jobs", :force => true do |t|
    t.integer  "job_type_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "jobs", ["job_type_id"], :name => "index_jobs_on_job_type_id"

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.integer  "contact_info_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "locations", ["contact_info_id"], :name => "index_locations_on_contact_info_id"

  create_table "shift_assignments", :force => true do |t|
    t.integer  "shift_id"
    t.integer  "staffer_id"
    t.integer  "assignment_status_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "shift_assignments", ["assignment_status_id"], :name => "index_shift_assignments_on_assignment_status_id"
  add_index "shift_assignments", ["shift_id"], :name => "index_shift_assignments_on_shift_id"
  add_index "shift_assignments", ["staffer_id"], :name => "index_shift_assignments_on_staffer_id"

  create_table "shifts", :force => true do |t|
    t.integer  "job_id"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.integer  "location_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "shifts", ["job_id"], :name => "index_shifts_on_job_id"
  add_index "shifts", ["location_id"], :name => "index_shifts_on_location_id"

  create_table "shirt_sizes", :force => true do |t|
    t.string   "size"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "staffers", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "anonymous_id"
    t.string   "fname"
    t.string   "mi"
    t.string   "lname"
    t.string   "suffix"
    t.integer  "shirt_size_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "staffers", ["email"], :name => "index_staffers_on_email", :unique => true
  add_index "staffers", ["reset_password_token"], :name => "index_staffers_on_reset_password_token", :unique => true

end
