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

ActiveRecord::Schema.define(version: 20150318182934) do

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.string   "yob"
    t.string   "awards"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actors_dvds", id: false, force: :cascade do |t|
    t.integer "actor_id", null: false
    t.integer "dvd_id",   null: false
  end

  add_index "actors_dvds", ["actor_id", "dvd_id"], name: "index_actors_dvds_on_actor_id_and_dvd_id"

  create_table "dvds", force: :cascade do |t|
    t.string   "title"
    t.string   "genre"
    t.string   "year"
    t.string   "rating"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dvds", ["user_id"], name: "index_dvds_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
