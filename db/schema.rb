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

ActiveRecord::Schema.define(version: 20171113075935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_bookings_on_lesson_id"
    t.index ["student_id"], name: "index_bookings_on_student_id"
  end


  create_table "lessons", force: :cascade do |t|
    t.datetime "datetime"
    t.bigint "tutor_id"
    t.integer "duration"
    t.integer "price"
    t.string "venue"
    t.string "language_taught"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "details"
    t.index ["tutor_id"], name: "index_lessons_on_tutor_id"
  end


  create_table "testimonials", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "tutor_id"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_testimonials_on_author_id"
    t.index ["tutor_id"], name: "index_testimonials_on_tutor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "photo"
    t.string "gender"
    t.boolean "reg_tutor", default: false
    t.text "past_experience"
    t.string "github"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "terms"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "lessons"
  add_foreign_key "bookings", "users", column: "student_id"
  add_foreign_key "lessons", "users", column: "tutor_id"
  add_foreign_key "testimonials", "users", column: "author_id"
  add_foreign_key "testimonials", "users", column: "tutor_id"
end
