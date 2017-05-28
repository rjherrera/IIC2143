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

ActiveRecord::Schema.define(version: 20170426215523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actors_tv_shows", id: false, force: :cascade do |t|
    t.integer "actor_id",   null: false
    t.integer "tv_show_id", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "tv_show_id"
    t.index ["tv_show_id"], name: "index_articles_on_tv_show_id", using: :btree
    t.index ["user_id"], name: "index_articles_on_user_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_tv_shows", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "tv_show_id",  null: false
  end

  create_table "categories_users", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "user_id",     null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "episodes", force: :cascade do |t|
    t.integer  "number"
    t.string   "title"
    t.time     "duration"
    t.text     "plot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "season_id"
    t.index ["season_id"], name: "index_episodes_on_season_id", using: :btree
  end

  create_table "episodes_users", id: false, force: :cascade do |t|
    t.integer "user_id",    null: false
    t.integer "episode_id", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "stars"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "tv_show_id"
    t.integer  "user_id"
    t.integer  "episode_id"
    t.index ["episode_id"], name: "index_reviews_on_episode_id", using: :btree
    t.index ["tv_show_id"], name: "index_reviews_on_tv_show_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "seasons", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "tv_show_id"
    t.index ["tv_show_id"], name: "index_seasons_on_tv_show_id", using: :btree
  end

  create_table "subtitles", force: :cascade do |t|
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subtitles_tv_shows", id: false, force: :cascade do |t|
    t.integer "subtitle_id", null: false
    t.integer "tv_show_id",  null: false
  end

  create_table "tv_shows", force: :cascade do |t|
    t.string   "title"
    t.string   "language"
    t.string   "country"
    t.integer  "start_year"
    t.integer  "end_year"
    t.text     "plot"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "director_id"
    t.integer  "user_id"
    t.index ["director_id"], name: "index_tv_shows_on_director_id", using: :btree
    t.index ["user_id"], name: "index_tv_shows_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.boolean  "is_kid",                 default: false
    t.boolean  "is_admin",               default: false
    t.integer  "father_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["father_id"], name: "index_users_on_father_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "articles", "tv_shows"
  add_foreign_key "articles", "users"
  add_foreign_key "episodes", "seasons"
  add_foreign_key "reviews", "episodes"
  add_foreign_key "reviews", "tv_shows"
  add_foreign_key "reviews", "users"
  add_foreign_key "seasons", "tv_shows"
  add_foreign_key "tv_shows", "directors"
  add_foreign_key "tv_shows", "users"
  add_foreign_key "users", "users", column: "father_id"
end
