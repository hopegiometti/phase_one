# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_20_184137) do

  create_table "cities", force: :cascade do |t|
    t.integer "city_id"
    t.string "name"
    t.integer "country_id"
    t.string "country_name"
    t.string "country_flag_url"
    t.integer "should_experiment"
    t.integer "has_go_out_tab"
    t.integer "discovery_enabled"
    t.integer "has_new_ad_format"
    t.integer "is_state"
    t.integer "state_id"
    t.string "state_name"
    t.string "state_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
