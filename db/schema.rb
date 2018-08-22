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

ActiveRecord::Schema.define(version: 2018_08_22_122330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.text "bio"
    t.string "website"
    t.string "soundcloud"
    t.string "spotify"
    t.string "bandcamp"
    t.string "facebook"
    t.string "instagram"
    t.string "twitter"
    t.string "youtube"
    t.string "vimeo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "name"
    t.bigint "genre_id"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.index ["genre_id"], name: "index_bands_on_genre_id"
    t.index ["user_id"], name: "index_bands_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "gig_id"
    t.bigint "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_bookings_on_band_id"
    t.index ["gig_id"], name: "index_bookings_on_gig_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gigs", force: :cascade do |t|
    t.datetime "datetime"
    t.string "address"
    t.bigint "genre_id"
    t.boolean "paid"
    t.string "organizer_type"
    t.bigint "organizer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "other_bands"
    t.string "url"
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.text "description"
    t.index ["genre_id"], name: "index_gigs_on_genre_id"
    t.index ["organizer_type", "organizer_id"], name: "index_gigs_on_organizer_type_and_organizer_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "profile_type"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["profile_type", "profile_id"], name: "index_photos_on_profile_type_and_profile_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "professionalism"
    t.integer "quality"
    t.integer "turnout"
    t.string "sender_type"
    t.bigint "sender_id"
    t.string "receiver_type"
    t.bigint "receiver_id"
    t.bigint "gig_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subject"
    t.index ["gig_id"], name: "index_reviews_on_gig_id"
    t.index ["receiver_type", "receiver_id"], name: "index_reviews_on_receiver_type_and_receiver_id"
    t.index ["sender_type", "sender_id"], name: "index_reviews_on_sender_type_and_sender_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.string "address"
    t.string "telephone"
    t.string "email"
    t.text "description"
    t.string "website"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_venues_on_user_id"
  end

  add_foreign_key "bands", "genres"
  add_foreign_key "bands", "users"
  add_foreign_key "bookings", "bands"
  add_foreign_key "bookings", "gigs"
  add_foreign_key "gigs", "genres"
  add_foreign_key "reviews", "gigs"
  add_foreign_key "venues", "users"
end
