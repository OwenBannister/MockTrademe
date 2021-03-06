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

ActiveRecord::Schema.define(:version => 20121120025246) do

  create_table "auctions", :force => true do |t|
    t.string   "name"
    t.datetime "closing_date"
    t.integer  "reserve"
    t.integer  "phto_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "price"
    t.integer  "buynow"
    t.string   "state"
    t.string   "current_state"
    t.string   "image"
    t.integer  "category_id"
    t.string   "category"
  end

  create_table "bids", :force => true do |t|
    t.integer  "amount"
    t.integer  "user_id"
    t.datetime "bid_time"
    t.integer  "auction_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.boolean  "leading_bid"
    t.boolean  "auction_closed"
    t.string   "state"
    t.datetime "opened_date"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "photo_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
