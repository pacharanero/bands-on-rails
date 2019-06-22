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

ActiveRecord::Schema.define(version: 2019_06_22_150648) do

  create_table "gigs", force: :cascade do |t|
    t.integer "venue_id"
    t.integer "set_list_id"
    t.string "notes"
    t.integer "fee"
    t.boolean "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["set_list_id"], name: "index_gigs_on_set_list_id"
    t.index ["venue_id"], name: "index_gigs_on_venue_id"
  end

  create_table "set_lists", force: :cascade do |t|
    t.string "title"
    t.string "notes"
    t.string "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setlist_songs", force: :cascade do |t|
    t.integer "setlist_id"
    t.integer "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["setlist_id"], name: "index_setlist_songs_on_setlist_id"
    t.index ["song_id"], name: "index_setlist_songs_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "video_url"
    t.string "chart_url"
    t.integer "setlist_id"
    t.string "performance_notes"
    t.string "key"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["setlist_id"], name: "index_songs_on_setlist_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
