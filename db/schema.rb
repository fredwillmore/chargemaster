# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_02_21_205503) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "charges", force: :cascade do |t|
    t.integer "hospital_id"
    t.string "description"
    t.string "hcpcs_code"
    t.string "charge_code"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_charges_on_hospital_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "facility_id"
    t.string "facility_name"
    t.string "address"
    t.string "city_town"
    t.string "state"
    t.string "zip_code"
    t.string "county_parish"
    t.string "telephone_number"
    t.string "hospital_type"
    t.string "hospital_ownership"
    t.string "emergency_services"
    t.string "meets_criteria_for_birthing_friendly_designation"
    t.string "hospital_overall_rating"
    t.string "hospital_overall_rating_footnote"
    t.string "employer_identification_number"
    t.string "machine_readable_file_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sheets", force: :cascade do |t|
    t.integer "hospital_id"
    t.string "name"
    t.string "charge_code_header"
    t.string "description_header"
    t.string "hcpcs_header"
    t.string "cost_header"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_sheets_on_hospital_id"
  end
end
