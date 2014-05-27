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

ActiveRecord::Schema.define(:version => 20120922181518) do

  create_table "subnets", :force => true do |t|
    t.string   "network"
    t.string   "firstaddr"
    t.string   "bcastaddr"
    t.string   "mask"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "system_id"
  end

  add_index "subnets", ["system_id"], :name => "index_subnets_on_system_id"

  create_table "systems", :force => true do |t|
    t.string   "name"
    t.integer  "subnet_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "systems", ["subnet_id"], :name => "index_systems_on_subnet_id"

end
