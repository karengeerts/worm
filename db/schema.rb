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

ActiveRecord::Schema.define(version: 20180208033241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table "presentations", force: :cascade do |t|
    t.text "description"
    t.text "metric"
    t.datetime "date"
    t.text "region"
    t.bigint "teacher_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.uuid "uuid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["teacher_id"], name: "index_presentations_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.text "email"
    t.text "username"
    t.text "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "vote_value"
    t.text "ip_region"
    t.bigint "presentation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["presentation_id"], name: "index_votes_on_presentation_id"
  end

  add_foreign_key "presentations", "teachers"
  add_foreign_key "votes", "presentations"
end
