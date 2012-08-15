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

ActiveRecord::Schema.define(:version => 20120815185629) do

  create_table "branches", :force => true do |t|
    t.string   "name"
    t.text     "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "sku"
    t.date     "date"
    t.string   "units"
    t.decimal  "price"
    t.boolean  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stock_items", :force => true do |t|
    t.integer  "branch_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "stock_items", ["branch_id"], :name => "index_stock_items_on_branch_id"
  add_index "stock_items", ["product_id"], :name => "index_stock_items_on_product_id"

  create_table "transfered_products", :force => true do |t|
    t.integer  "transfer_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.text     "note"
    t.integer  "difference"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "quantity_entry"
  end

  add_index "transfered_products", ["product_id"], :name => "index_transfered_products_on_product_id"
  add_index "transfered_products", ["transfer_id"], :name => "index_transfered_products_on_transfer_id"

  create_table "transfers", :force => true do |t|
    t.integer  "branch_id"
    t.string   "mode"
    t.string   "name_dealer"
    t.date     "date_output"
    t.date     "date_supply"
    t.string   "status"
    t.string   "destination"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "transfers", ["branch_id"], :name => "index_transfers_on_branch_id"

end
