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

ActiveRecord::Schema.define(version: 20160925041934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accommodation_types", force: :cascade do |t|
    t.string   "nombre"
    t.boolean  "activo",     default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "accommodations", force: :cascade do |t|
    t.integer  "accomodation_type_id"
    t.string   "foto"
    t.integer  "user_id"
    t.integer  "puntaje"
    t.integer  "cantidadPersonas"
    t.boolean  "disponible"
    t.string   "direccion"
    t.string   "descripcion"
    t.string   "string"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "accomodations", force: :cascade do |t|
    t.integer  "accomodation_type_id"
    t.string   "foto"
    t.integer  "user_id"
    t.integer  "puntaje"
    t.integer  "cantidadPersonas"
    t.boolean  "disponible"
    t.string   "direccion"
    t.string   "descripcion"
    t.string   "string"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "acomodations", force: :cascade do |t|
    t.integer  "accomodation_type_id"
    t.string   "foto"
    t.integer  "user_id"
    t.integer  "puntaje"
    t.integer  "cantidadPersonas"
    t.boolean  "disponible"
    t.string   "direccion"
    t.string   "descripcion"
    t.string   "string"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "installs", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_installs_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.boolean  "registered"
    t.string   "nombre"
    t.boolean  "vip"
    t.float    "puntos"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
