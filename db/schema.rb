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

ActiveRecord::Schema.define(version: 2020_05_17_013045) do

  create_table "conection_strains", force: :cascade do |t|
    t.integer "wine_id"
    t.integer "strain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["strain_id"], name: "index_conection_strains_on_strain_id"
    t.index ["wine_id"], name: "index_conection_strains_on_wine_id"
  end

  create_table "magazines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "magazines_oenologists", id: false, force: :cascade do |t|
    t.integer "oenologist_id", null: false
    t.integer "magazine_id", null: false
    t.index ["magazine_id", "oenologist_id"], name: "index_magazines_oenologists_on_magazine_id_and_oenologist_id"
    t.index ["oenologist_id", "magazine_id"], name: "index_magazines_oenologists_on_oenologist_id_and_magazine_id"
  end

  create_table "oenologists", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "nationality"
    t.integer "magazine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["magazine_id"], name: "index_oenologists_on_magazine_id"
  end

  create_table "oenologists_wines", id: false, force: :cascade do |t|
    t.integer "oenologist_id", null: false
    t.integer "wine_id", null: false
    t.index ["oenologist_id", "wine_id"], name: "index_oenologists_wines_on_oenologist_id_and_wine_id"
    t.index ["wine_id", "oenologist_id"], name: "index_oenologists_wines_on_wine_id_and_oenologist_id"
  end

  create_table "strains", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "available_strain", default: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.integer "qualification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
