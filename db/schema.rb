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

ActiveRecord::Schema[7.1].define(version: 2024_12_26_073432) do
  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trade_ins", force: :cascade do |t|
    t.string "fullname"
    t.string "email"
    t.string "phone"
    t.string "zip"
    t.string "manufacturer_name"
    t.string "manufacturer_model"
    t.string "serial"
    t.integer "years"
    t.string "options"
    t.integer "body"
    t.integer "paint"
    t.integer "glass"
    t.integer "rust"
    t.integer "frame"
    t.integer "electronic_components"
    t.integer "motor"
    t.integer "bearings"
    t.integer "mechanical_problems"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
