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

ActiveRecord::Schema.define(:version => 20130202222349) do

  create_table "items", :force => true do |t|
    t.string   "item_name"
    t.string   "item_description"
    t.decimal  "price"
    t.string   "dimension"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "order_items", :force => true do |t|
    t.integer  "quantity"
    t.decimal  "price_per_line"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "order_id"
    t.integer  "item_id"
  end

  create_table "orders", :force => true do |t|
    t.string   "order_number"
    t.decimal  "total_price"
    t.integer  "total_num_of_items"
    t.decimal  "max_discount"
    t.date     "delivery_date"
    t.string   "status"
    t.integer  "user_id"
    t.string   "role"
    t.date     "date_of_ordering"
    t.date     "pref_delivery_date"
    t.string   "credit_card_type"
    t.string   "credit_card_number"
    t.string   "cvv2"
    t.date     "expiry_date"
    t.date     "start_date"
    t.string   "issue_number"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "orders", ["user_id"], :name => "index_orders_on_user_id"

end
