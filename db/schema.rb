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

ActiveRecord::Schema.define(:version => 20110607035759) do

  create_table "activities", :force => true do |t|
    t.string   "Description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "advertisements", :force => true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "image_url"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
  end

  create_table "branches", :force => true do |t|
    t.integer  "user_id"
    t.integer  "location_id"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clicks", :force => true do |t|
    t.string   "ip_address"
    t.datetime "date"
    t.integer  "advertisement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.datetime "date"
    t.integer  "cod_origin_id"
    t.integer  "user_id"
    t.integer  "origin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
    t.integer  "show"
  end

  create_table "events", :force => true do |t|
    t.string   "description"
    t.datetime "start_date"
    t.datetime "final_date"
    t.string   "title"
    t.string   "link"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string   "image_url"
    t.string   "comment"
    t.integer  "cod_origin_id"
    t.integer  "origin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagelocation"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "tag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "origins", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services_branches", :force => true do |t|
    t.integer  "branch_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "latitud"
    t.string   "longitud"
  end

  create_table "sites_activities", :force => true do |t|
    t.integer  "site_id"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites_services", :force => true do |t|
    t.integer  "site_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "",    :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "",    :null => false
    t.string   "password_salt",                       :default => "",    :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                               :default => false
    t.string   "logo"
    t.string   "address"
    t.string   "web_page"
    t.string   "phone"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
