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

ActiveRecord::Schema.define(version: 2018_06_16_233428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forms", force: :cascade do |t|
    t.integer "age"
    t.string "gender"
    t.string "classroom"
    t.string "siblings"
    t.string "address"
    t.string "internet_usage"
    t.string "mother_education"
    t.string "father_education"
    t.string "parent_status"
    t.string "mother_age"
    t.string "father_age"
    t.string "transportation"
    t.integer "q1"
    t.integer "q2"
    t.integer "q3"
    t.integer "q4"
    t.integer "q5"
    t.integer "q6"
    t.integer "q7"
    t.integer "q8"
    t.integer "q9"
    t.integer "q10"
    t.integer "q11"
    t.integer "q12"
    t.integer "q13"
    t.integer "q14"
    t.integer "q15"
    t.integer "q16"
    t.integer "q17"
    t.integer "q18"
    t.integer "q19"
    t.integer "q20"
    t.integer "q21"
    t.integer "q22"
    t.integer "q23"
    t.integer "q24"
    t.integer "q25"
    t.integer "q26"
    t.integer "q27"
    t.integer "q28"
    t.integer "q29"
    t.integer "q30"
    t.integer "q31"
    t.integer "q32"
    t.integer "q33"
    t.integer "q34"
    t.integer "q35"
    t.integer "q36"
    t.integer "q37"
    t.integer "q38"
    t.integer "q39"
    t.integer "q40"
    t.integer "q41"
    t.integer "q42"
    t.integer "q43"
    t.integer "q44"
    t.integer "q45"
    t.integer "q46"
    t.integer "q47"
    t.integer "q48"
    t.integer "q49"
    t.integer "q50"
    t.integer "q51"
    t.integer "q52"
    t.integer "q53"
    t.integer "q54"
    t.integer "q55"
    t.integer "q56"
    t.integer "q57"
    t.integer "q58"
    t.integer "q59"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "number"
    t.string "email"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
