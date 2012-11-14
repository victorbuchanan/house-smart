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

ActiveRecord::Schema.define(:version => 20121114143056) do

  create_table "area_base_prices", :force => true do |t|
    t.string   "area_name"
    t.integer  "avg_sqft"
    t.integer  "avg_lot"
    t.integer  "avg_year"
    t.integer  "avg_bed"
    t.integer  "avg_bath"
    t.integer  "price_per_sqft"
    t.integer  "price_per_lot"
    t.integer  "price_per_year"
    t.integer  "price_per_bed"
    t.integer  "price_per_bath"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "contractor_features", :force => true do |t|
    t.integer  "contractor_id"
    t.integer  "feature_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "contractors", :force => true do |t|
    t.string   "specialty"
    t.string   "name"
    t.integer  "hire_able_id"
    t.string   "hire_able_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "contractor_id"
  end

  create_table "features", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "value"
    t.boolean  "upgradeable"
    t.integer  "feature_id"
  end

  create_table "houses", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "dwelling_type"
    t.string   "style"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.string   "living_area"
    t.integer  "lot_size"
    t.integer  "year_built"
    t.integer  "square_footage"
  end

  create_table "professionals", :force => true do |t|
    t.string   "area_of_service"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "company_name"
    t.string   "email"
    t.string   "phonenumber"
    t.string   "fax"
    t.string   "ptype"
    t.integer  "company_num"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "properties", :force => true do |t|
    t.decimal  "lot_size",         :precision => 8, :scale => 2
    t.integer  "propertible_id"
    t.string   "propertible_type"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "realtors", :force => true do |t|
    t.string   "name"
    t.integer  "hire_able_id"
    t.string   "hire_able_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
