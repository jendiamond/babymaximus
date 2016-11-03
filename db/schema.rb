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
