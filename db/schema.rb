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

ActiveRecord::Schema.define(version: 20170922173622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  add_foreign_key "tracks", "promotions"
end
