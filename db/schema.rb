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

ActiveRecord::Schema.define(version: 20161028005449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "baths", force: :cascade do |t|
    t.integer  "day_id"
    t.boolean  "bath"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_baths_on_day_id", using: :btree
  end

  create_table "days", force: :cascade do |t|
    t.integer  "week"
    t.datetime "date"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diapers", force: :cascade do |t|
    t.integer  "day_id"
    t.string   "diaper_type"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["day_id"], name: "index_diapers_on_day_id", using: :btree
  end

  create_table "feedings", force: :cascade do |t|
    t.integer  "day_id"
    t.datetime "feeding_time"
    t.boolean  "left"
    t.boolean  "right"
    t.integer  "minutes"
    t.string   "feeding_type"
    t.integer  "feeding_amount"
    t.text     "notes"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["day_id"], name: "index_feedings_on_day_id", using: :btree
  end

  create_table "pumps", force: :cascade do |t|
    t.integer  "day_id"
    t.datetime "pump_time"
    t.integer  "pump_amount"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["day_id"], name: "index_pumps_on_day_id", using: :btree
  end

  create_table "sleeps", force: :cascade do |t|
    t.integer  "day_id"
    t.datetime "sleep_start"
    t.datetime "sleep_end"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["day_id"], name: "index_sleeps_on_day_id", using: :btree
  end

  create_table "tummy_times", force: :cascade do |t|
    t.integer  "day_id"
    t.integer  "tummy_time"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_tummy_times_on_day_id", using: :btree
  end

  add_foreign_key "baths", "days"
  add_foreign_key "diapers", "days"
  add_foreign_key "feedings", "days"
  add_foreign_key "pumps", "days"
  add_foreign_key "sleeps", "days"
  add_foreign_key "tummy_times", "days"
end
