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

ActiveRecord::Schema.define(:version => 20111111111111) do

  create_table "entries", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "ancestry"
    t.integer  "ancestry_depth"
    t.string   "file_uid"
    t.integer  "file_size"
    t.integer  "file_width"
    t.integer  "file_height"
    t.string   "file_mime_type"
    t.string   "file_mime_directory"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entries", ["ancestry"], :name => "index_entries_on_ancestry"
  add_index "entries", ["name"], :name => "index_entries_on_name"

end
