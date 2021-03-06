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

ActiveRecord::Schema.define(version: 20140116222205) do

  create_table "abouts", force: true do |t|
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "browsers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "composers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "composer_id"
    t.string   "notes"
  end

  create_table "performances", force: true do |t|
    t.string   "date"
    t.string   "venue"
    t.text     "program"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visitors", force: true do |t|
    t.string   "ip_address"
    t.boolean  "mobile"
    t.string   "browser"
    t.integer  "pageview_visits", default: 0
    t.time     "start_time"
    t.time     "end_time"
    t.string   "language"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "visit_count",     default: 0
    t.string   "cookie_id"
  end

end
