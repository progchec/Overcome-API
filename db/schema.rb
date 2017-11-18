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

ActiveRecord::Schema.define(version: 20171118062931) do

  create_table "completeds", force: :cascade do |t|
    t.integer "contact_id"
    t.text "text"
    t.float "post_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "proof_image_file_name"
    t.string "proof_image_content_type"
    t.integer "proof_image_file_size"
    t.datetime "proof_image_updated_at"
    t.index ["contact_id"], name: "index_completeds_on_contact_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "login"
    t.string "password"
    t.string "phone"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "virginity"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "avatar"
  end

  create_table "faileds", force: :cascade do |t|
    t.integer "contact_id"
    t.text "text"
    t.float "post_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_faileds_on_contact_id"
  end

  create_table "publisheds", force: :cascade do |t|
    t.integer "contact_id"
    t.text "text"
    t.float "post_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "proof_image_file_name"
    t.string "proof_image_content_type"
    t.integer "proof_image_file_size"
    t.datetime "proof_image_updated_at"
    t.index ["contact_id"], name: "index_publisheds_on_contact_id"
  end

  create_table "runnings", force: :cascade do |t|
    t.integer "contact_id"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_runnings_on_contact_id"
  end

end
