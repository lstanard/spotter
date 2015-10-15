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

ActiveRecord::Schema.define(version: 20151015030321) do

  create_table "exercises", force: true do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "single_sets", force: true do |t|
    t.integer  "workout_exercises_id", limit: 4
    t.integer  "reps",                 limit: 4
    t.integer  "weight",               limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "single_sets", ["workout_exercises_id"], name: "index_single_sets_on_workout_exercises_id", using: :btree

  create_table "user_records", force: true do |t|
    t.integer  "users_id",       limit: 4
    t.integer  "exercises_id",   limit: 4
    t.integer  "single_sets_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "user_records", ["exercises_id"], name: "index_user_records_on_exercises_id", using: :btree
  add_index "user_records", ["single_sets_id"], name: "index_user_records_on_single_sets_id", using: :btree
  add_index "user_records", ["users_id"], name: "index_user_records_on_users_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

  create_table "workout_exercises", force: true do |t|
    t.integer  "workouts_id",  limit: 4
    t.integer  "exercises_id", limit: 4
    t.integer  "sets",         limit: 4
    t.integer  "target_reps",  limit: 4
    t.integer  "rest",         limit: 4
    t.integer  "tempo",        limit: 4
    t.string   "notes",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "workout_exercises", ["exercises_id"], name: "index_workout_exercises_on_exercises_id", using: :btree
  add_index "workout_exercises", ["workouts_id"], name: "index_workout_exercises_on_workouts_id", using: :btree

  create_table "workouts", force: true do |t|
    t.integer  "user_id",    limit: 4
    t.string   "name",       limit: 255
    t.datetime "date"
    t.text     "notes",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "workouts", ["user_id"], name: "index_workouts_on_user_id", using: :btree

end
