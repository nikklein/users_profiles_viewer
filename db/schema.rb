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

ActiveRecord::Schema.define(version: 20161116160332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_profiles", force: :cascade do |t|
    t.string   "username"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "postal_code"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["latitude", "longitude"], name: "index_user_profiles_on_latitude_and_longitude", using: :btree
    t.index ["username", "address"], name: "index_user_profiles_on_username_and_address", using: :btree
    t.index ["username", "city", "country"], name: "index_user_profiles_on_username_and_city_and_country", using: :btree
    t.index ["username", "city"], name: "index_user_profiles_on_username_and_city", using: :btree
    t.index ["username", "country"], name: "index_user_profiles_on_username_and_country", using: :btree
    t.index ["username", "postal_code"], name: "index_user_profiles_on_username_and_postal_code", using: :btree
    t.index ["username", "state"], name: "index_user_profiles_on_username_and_state", using: :btree
  end

end
