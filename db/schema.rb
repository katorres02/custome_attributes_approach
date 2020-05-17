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

ActiveRecord::Schema.define(version: 2020_05_17_024741) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.text "custome_attributes_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "attribute_options", force: :cascade do |t|
    t.string "name"
    t.integer "custome_attribute_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["custome_attribute_id"], name: "index_attribute_options_on_custome_attribute_id"
  end

  create_table "custome_attributes", force: :cascade do |t|
    t.string "field_name"
    t.string "field_type"
    t.boolean "required", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "attribute_options", "custome_attributes"
end
