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

ActiveRecord::Schema.define(version: 20200404214231) do

  create_table "musicians", force: :cascade do |t|
    t.text     "songs"
    t.integer  "monthly_listeners"
    t.integer  "fans"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "tours", force: :cascade do |t|
    t.text     "cities"
    t.text     "venues"
    t.integer  "tickets_sold"
    t.integer  "musicians_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "tours", ["musicians_id"], name: "index_tours_on_musicians_id"

end
