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

ActiveRecord::Schema.define(version: 2019_06_25_013006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "dni"
    t.string "apeynom"
    t.string "celular"
    t.string "domicilio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.date "fecha"
    t.bigint "client_id"
    t.bigint "stock_id"
    t.integer "cantidad"
    t.decimal "precio", precision: 8, scale: 2
    t.decimal "total", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_jobs_on_client_id"
    t.index ["stock_id"], name: "index_jobs_on_stock_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.string "productootrabajo"
    t.decimal "precosto", precision: 8, scale: 2
    t.decimal "preventa", precision: 8, scale: 2
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "jobs", "clients"
  add_foreign_key "jobs", "stocks"
end
