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

ActiveRecord::Schema.define(version: 20141120202513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: true do |t|
    t.string   "class_name"
    t.integer  "school_id"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "classrooms", ["school_id"], name: "index_classrooms_on_school_id", using: :btree

  create_table "game_tracks", force: true do |t|
    t.integer  "user_id"
    t.string   "skillLevel"
    t.integer  "levelPoints"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "completedLessons"
    t.text     "uncompletedLessons"
    t.integer  "currentPoints"
    t.string   "gameName"
  end

  add_index "game_tracks", ["user_id"], name: "index_game_tracks_on_user_id", using: :btree

  create_table "lessons", force: true do |t|
    t.string   "answer"
    t.string   "category"
    t.text     "content"
    t.string   "distract1"
    t.string   "distract2"
    t.string   "distract3"
    t.string   "photo"
    t.string   "question"
    t.string   "tags"
    t.integer  "word_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sound"
    t.string   "posneg"
    t.string   "skillLevel"
    t.integer  "user_id"
    t.string   "translation"
  end

  add_index "lessons", ["user_id"], name: "index_lessons_on_user_id", using: :btree
  add_index "lessons", ["word_id"], name: "index_lessons_on_word_id", using: :btree

  create_table "planifications", force: true do |t|
    t.integer  "user_id"
    t.integer  "program_id"
    t.string   "subject"
    t.string   "teach_time"
    t.integer  "classroom_id"
    t.text     "obj_fund_vert"
    t.text     "obj_fund_transv"
    t.text     "contents"
    t.text     "expect_learn"
    t.text     "activ"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "planifications", ["classroom_id"], name: "index_planifications_on_classroom_id", using: :btree
  add_index "planifications", ["program_id"], name: "index_planifications_on_program_id", using: :btree
  add_index "planifications", ["user_id"], name: "index_planifications_on_user_id", using: :btree

  create_table "programs", force: true do |t|
    t.string   "name"
    t.string   "subject"
    t.text     "obj_fund_vert"
    t.text     "obj_fund_transv"
    t.text     "contents"
    t.text     "activities"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "exp_learn"
  end

  create_table "reports", force: true do |t|
    t.string   "reason"
    t.integer  "lesson_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reports", ["lesson_id"], name: "index_reports_on_lesson_id", using: :btree

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweets", force: true do |t|
    t.string   "name"
    t.text     "ttext"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token"
    t.string   "likes"
    t.string   "role"
    t.text     "classrooms"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "words", force: true do |t|
    t.text     "definition"
    t.string   "word"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "translation"
  end

end
