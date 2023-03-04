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

ActiveRecord::Schema[7.0].define(version: 2023_03_04_034757) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "map_weapon_squares", force: :cascade do |t|
    t.bigint "weapon_id", null: false
    t.integer "grid_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["weapon_id"], name: "index_map_weapon_squares_on_weapon_id"
  end

  create_table "user_weapons", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "weapon_belongs_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_weapons_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest"
    t.string "username"
    t.string "email"
    t.integer "game_gems"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.float "fire_rate"
    t.integer "damage"
    t.float "area_of_effect"
    t.integer "pierce"
    t.float "weapon_reload"
    t.float "bullet_width"
    t.integer "critical_rate"
    t.float "bullet_speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "map_weapon_squares", "weapons"
  add_foreign_key "user_weapons", "users"
end
