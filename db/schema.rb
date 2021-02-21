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

ActiveRecord::Schema.define(version: 2021_02_21_224959) do

  create_table "cubboards", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_cubboards_on_room_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "url"
    t.string "linkable_type"
    t.integer "linkable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "format"
    t.index ["linkable_type", "linkable_id"], name: "index_links_on_linkable_type_and_linkable_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shelves", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "cubboard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cubboard_id"], name: "index_shelves_on_cubboard_id"
  end

end
