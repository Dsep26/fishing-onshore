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

ActiveRecord::Schema[7.0].define(version: 2022_10_18_072554) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fishing_spots", force: :cascade do |t|
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "fishing_activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hints", force: :cascade do |t|
    t.text "description"
    t.string "equipment"
    t.bigint "fishing_spot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fishing_spot_id"], name: "index_hints_on_fishing_spot_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "prefered_fishing_spots", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "fishing_spot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fishing_spot_id"], name: "index_prefered_fishing_spots_on_fishing_spot_id"
    t.index ["user_id"], name: "index_prefered_fishing_spots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "hints", "fishing_spots"
  add_foreign_key "posts", "users"
  add_foreign_key "prefered_fishing_spots", "fishing_spots"
  add_foreign_key "prefered_fishing_spots", "users"
end
