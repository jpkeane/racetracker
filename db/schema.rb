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

ActiveRecord::Schema.define(version: 20171024193706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fixtures", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.bigint "track_id", null: false
    t.datetime "start_time", null: false
    t.text "short_desc"
    t.text "long_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_fixtures_on_track_id"
  end

  create_table "formula_fixture_heats", force: :cascade do |t|
    t.integer "heat_number", null: false
    t.integer "race_number", null: false
    t.string "slug", null: false
    t.bigint "formula_fixture_id", null: false
    t.string "title"
    t.string "race_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "laps", default: 12, null: false
    t.index ["formula_fixture_id"], name: "index_formula_fixture_heats_on_formula_fixture_id"
  end

  create_table "formula_fixtures", force: :cascade do |t|
    t.string "slug", null: false
    t.bigint "fixture_id", null: false
    t.bigint "formula_id", null: false
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fixture_id"], name: "index_formula_fixtures_on_fixture_id"
    t.index ["formula_id"], name: "index_formula_fixtures_on_formula_id"
  end

  create_table "formulas", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.string "short_name", null: false
    t.bigint "promotion_id"
    t.string "abbreviation", null: false
    t.string "contact", null: false
    t.string "direction", null: false
    t.text "description"
    t.integer "min_age"
    t.integer "max_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promotion_id"], name: "index_formulas_on_promotion_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "promotions", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.string "company_name"
    t.string "company_number"
    t.string "address_ln_1"
    t.string "address_ln_2"
    t.string "city"
    t.string "postcode"
    t.string "telephone_main"
    t.string "telephone_tickets"
    t.string "telephone_bookings"
    t.text "short_desc"
    t.text "long_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_promotions_on_slug", unique: true
  end

  create_table "tracks", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.bigint "promotion_id"
    t.string "address_ln_1"
    t.string "address_ln_2"
    t.string "city"
    t.string "postcode"
    t.string "telephone_office"
    t.string "telephone_tickets"
    t.string "telephone_bookings"
    t.string "surface"
    t.float "length"
    t.string "length_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promotion_id"], name: "index_tracks_on_promotion_id"
    t.index ["slug"], name: "index_tracks_on_slug", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "fixtures", "tracks"
  add_foreign_key "formula_fixture_heats", "formula_fixtures"
  add_foreign_key "formula_fixtures", "fixtures"
  add_foreign_key "formula_fixtures", "formulas"
  add_foreign_key "formulas", "promotions"
  add_foreign_key "tracks", "promotions"
end
