# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100606041912) do

  create_table "assays", :force => true do |t|
    t.integer  "fleet_id"
    t.datetime "done_on"
    t.string   "doer"
    t.integer  "tyres"
    t.integer  "vehicles"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
  end

  create_table "causes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faults", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fleets", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tires", :force => true do |t|
    t.integer  "fleet_id"
    t.integer  "assay_id"
    t.string   "kind"
    t.string   "tag"
    t.string   "brand"
    t.string   "model"
    t.string   "size"
    t.integer  "times"
    t.decimal  "furrow"
    t.string   "dot"
    t.integer  "fault_id"
    t.integer  "cause_id"
    t.string   "comment"
    t.string   "plate"
    t.decimal  "pression"
    t.string   "position"
    t.decimal  "odometer"
    t.string   "reformer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
