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

ActiveRecord::Schema.define(version: 20170515235513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.string   "kind"
    t.decimal  "balance"
    t.string   "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "franjas", force: :cascade do |t|
    t.datetime "fecha"
    t.decimal  "primera_hasta"
    t.decimal  "primera_precio"
    t.decimal  "segunda_hasta"
    t.decimal  "segunda_precio"
    t.decimal  "tercera_precio"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "tipo_id"
    t.decimal  "precio"
    t.index ["tipo_id"], name: "index_productos_on_tipo_id", using: :btree
  end

  create_table "tipos", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "productos", "tipos"
end
