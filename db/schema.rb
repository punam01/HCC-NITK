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

ActiveRecord::Schema[7.0].define(version: 2023_06_04_154406) do
  create_table "doctors", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "specialization"
    t.string "contact_number"
    t.string "email"
    t.string "address"
    t.string "education"
    t.integer "experience"
    t.string "availability"
    t.text "additional_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pharmacies", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "contact_number"
    t.string "email"
    t.string "working_hours"
    t.text "additional_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "roll_no"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
