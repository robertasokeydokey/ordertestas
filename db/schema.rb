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

ActiveRecord::Schema.define(version: 20161008093022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "service_id"
    t.integer  "offer_id"
    t.integer  "discount_id"
    t.decimal  "discount",         precision: 8, scale: 2
    t.decimal  "price",            precision: 8, scale: 2
    t.integer  "cart_id"
    t.integer  "quantity"
    t.datetime "valid_from"
    t.datetime "valid_until"
    t.boolean  "for_friend"
    t.string   "friends_name"
    t.string   "gift_sender_name"
    t.integer  "delivery_method"
    t.string   "friends_email"
    t.text     "gift_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
