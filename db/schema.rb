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

ActiveRecord::Schema.define(version: 20190304152018) do

  create_table "exercises", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.string  "experience_level"
    t.integer "sets"
    t.integer "repetitions"
    t.integer "average_calories"
  end

  create_table "user_workouts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "workout_id"
    t.datetime "date"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "password"
    t.integer "age"
    t.integer "weight"
    t.string  "gender"
    t.string  "experience_level"
  end

  create_table "workout_exercises", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "exercise_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "experience_level"
    t.string "day_of_week"
    t.string "type"
  end

end
