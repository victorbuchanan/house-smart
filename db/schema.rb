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

ActiveRecord::Schema.define(:version => 20121116045154) do

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

  create_table "features", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "value"
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

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
