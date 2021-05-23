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

ActiveRecord::Schema.define(version: 2021_05_22_183951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movements", force: :cascade do |t|
    t.string "name"
    t.integer "power"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movements_pokemons", id: false, force: :cascade do |t|
    t.bigint "pokemon_id", null: false
    t.bigint "movement_id", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "attack"
    t.integer "defense"
    t.float "speed"
    t.bigint "trainer_id"
    t.index ["trainer_id"], name: "index_pokemons_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.bigint "money"
    t.boolean "gym_leader", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pokemons", "trainers"
end
