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

ActiveRecord::Schema.define(version: 20160717184300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string   "verb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "count"
  end

  create_table "hashtags", force: :cascade do |t|
    t.string   "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "count"
    t.float    "sentiment"
  end

  create_table "locations", force: :cascade do |t|
    t.text     "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "miscs", force: :cascade do |t|
    t.text     "counters"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.string   "location"
    t.integer  "followers"
    t.string   "lang"
    t.string   "timezone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
