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

ActiveRecord::Schema.define(version: 2018_05_25_044109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artworks", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_artworks_on_user_id"
  end

  create_table "bpms", force: :cascade do |t|
    t.bigint "music_id"
    t.float "bpm"
    t.integer "bar"
    t.float "beat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["music_id"], name: "index_bpms_on_music_id"
  end

  create_table "chords", force: :cascade do |t|
    t.bigint "music_id"
    t.string "chord_name"
    t.string "primary_category"
    t.string "root"
    t.integer "bar"
    t.float "beat"
    t.integer "harmony_func"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["music_id"], name: "index_chords_on_music_id"
  end

  create_table "hyoshis", force: :cascade do |t|
    t.bigint "music_id"
    t.integer "denominator"
    t.integer "numerator"
    t.integer "bar"
    t.float "beat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["music_id"], name: "index_hyoshis_on_music_id"
  end

  create_table "keys", force: :cascade do |t|
    t.bigint "music_id"
    t.string "tonica"
    t.integer "key"
    t.integer "bar"
    t.float "beat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["music_id"], name: "index_keys_on_music_id"
  end

  create_table "musics", force: :cascade do |t|
    t.bigint "artwork_id"
    t.string "title"
    t.integer "usage"
    t.float "beginning_margin_sec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artwork_id"], name: "index_musics_on_artwork_id"
  end

  create_table "phrases", force: :cascade do |t|
    t.bigint "music_id"
    t.integer "bar"
    t.float "beat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["music_id"], name: "index_phrases_on_music_id"
  end

  create_table "tensions", force: :cascade do |t|
    t.string "tension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "family_name"
    t.string "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "artworks", "users"
  add_foreign_key "bpms", "musics"
  add_foreign_key "chords", "musics"
  add_foreign_key "hyoshis", "musics"
  add_foreign_key "musics", "artworks"
  add_foreign_key "phrases", "musics"
end
