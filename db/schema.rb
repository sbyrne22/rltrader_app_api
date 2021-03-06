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

ActiveRecord::Schema.define(version: 2018_03_09_193305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crates", force: :cascade do |t|
    t.string "name"
    t.string "img"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "rarity"
    t.string "img"
    t.boolean "playersChoice"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
    t.string "username"
    t.string "password_digest"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
