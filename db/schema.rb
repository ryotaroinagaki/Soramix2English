# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_09_115717) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.text "choice"
    t.boolean "is_answer", null: false
    t.index ["question_id"], name: "index_choices_on_question_id"
  end

  create_table "lyrics", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.text "lyric"
    t.integer "timing"
    t.index ["question_id"], name: "index_lyrics_on_question_id"
  end

  create_table "musics", force: :cascade do |t|
    t.string "music_name", null: false
    t.string "artist_name", null: false
    t.string "category"
    t.integer "year"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "music_id", null: false
    t.string "youtube_id", null: false
    t.integer "youtube_start_time", null: false
    t.integer "youtube_end_time", null: false
    t.integer "difficulty"
    t.text "commentary"
    t.text "japanese"
    t.index ["music_id"], name: "index_questions_on_music_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "choices", "questions"
  add_foreign_key "lyrics", "questions"
  add_foreign_key "questions", "musics"
end
