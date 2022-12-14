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

ActiveRecord::Schema.define(version: 2022_11_09_072248) do

  create_table "albums", force: :cascade do |t|
    t.string "name"
  end

  create_table "artists", force: :cascade do |t|
    t.string "full_name"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.integer "song_id"
    t.string "comment"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "img_url"
    t.integer "artist_id"
    t.integer "genre_id"
    t.integer "album_id"
  end

end
