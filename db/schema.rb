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

ActiveRecord::Schema.define(version: 2021_08_02_085331) do

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.integer "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.string "name"
    t.string "name_kana"
    t.integer "corporate_form_id"
    t.integer "corporate_number"
    t.string "address_postal"
    t.integer "address_prefecture_id"
    t.string "address_city"
    t.string "address_block"
    t.string "address_bldg"
    t.string "website"
    t.string "rep_name"
    t.string "rep_name_kana"
    t.string "officer_name"
    t.string "officer_name_kana"
    t.string "officer_phone"
    t.string "emergency_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "user_id"
    t.integer "number"
    t.string "name"
    t.date "contract_start_at"
    t.date "contract_end_at"
    t.string "area"
    t.string "address"
    t.string "location"
    t.string "budget_total"
    t.string "budget_to_apply_for"
    t.string "outline"
    t.string "description"
    t.integer "status_screening"
    t.integer "status_jigyoshajoho"
    t.string "attachment_jigyoshajoho"
    t.integer "status_renkeishinseiriyusho"
    t.string "attachment_renkeishinseiriyusho"
    t.date "event_start_at"
    t.date "event_end_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "project_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "category_id", default: 4, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
