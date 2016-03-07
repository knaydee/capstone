# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160307181615) do

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "breed"
    t.integer  "weight"
    t.string   "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "sex"
    t.string   "species"
  end

  create_table "service_vets", id: false, force: :cascade do |t|
    t.integer "vet_id",     null: false
    t.integer "service_id", null: false
    t.integer "price"
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.integer  "avg_cost"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "service_type"
  end

  create_table "user_vets", id: false, force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "vet_id",   null: false
    t.boolean "favorite"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "uid"
    t.string   "provider"
    t.string   "image"
  end

  create_table "vets", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "phone"
    t.string   "fax"
  end

end
