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

ActiveRecord::Schema.define(version: 2019_06_26_215737) do

  create_table "gigs", force: :cascade do |t|
    t.integer "venue_id"
    t.integer "set_list_id"
    t.string "notes"
    t.integer "fee"
    t.boolean "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.datetime "date"
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

  create_table "set_lists_songs", id: false, force: :cascade do |t|
    t.integer "set_list_id", null: false
    t.integer "song_id", null: false
    t.index ["set_list_id", "song_id"], name: "index_set_lists_songs_on_set_list_id_and_song_id"
    t.index ["song_id", "set_list_id"], name: "index_set_lists_songs_on_song_id_and_set_list_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "video_url"
    t.string "chart_url"
    t.string "performance_notes"
    t.string "key"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "genre"
    t.string "tags"
    t.string "singer"
    t.integer "bpm"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "google_maps_url"
  end

end
