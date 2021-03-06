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

ActiveRecord::Schema.define(version: 2020_01_14_165606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movelists", force: :cascade do |t|
    t.bigint "pokemon_id", null: false
    t.bigint "technical_machine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pokemon_id"], name: "index_movelists_on_pokemon_id"
    t.index ["technical_machine_id"], name: "index_movelists_on_technical_machine_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "element"
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "technical_machines", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "element"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "movelists", "pokemons"
  add_foreign_key "movelists", "technical_machines"
end
