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

ActiveRecord::Schema.define(:version => 20121013174318) do

  create_table "business_planes", :force => true do |t|
    t.string   "title",                                           :default => "Some plan"
    t.string   "category"
    t.text     "vision"
    t.text     "acknowledgment"
    t.integer  "duration"
    t.decimal  "total_investment", :precision => 10, :scale => 2
    t.decimal  "gross_margin",     :precision => 10, :scale => 2
    t.decimal  "roi",              :precision => 10, :scale => 2
    t.datetime "created_at",                                                               :null => false
    t.datetime "updated_at",                                                               :null => false
    t.integer  "entrepreneur_id"
  end

  create_table "entrepreneurs", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "document_type"
    t.string   "document_number"
    t.string   "email"
    t.string   "cellphone"
    t.string   "address"
    t.datetime "born_at"
    t.string   "password"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "questions", :force => true do |t|
    t.text     "content"
    t.integer  "business_plane_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
