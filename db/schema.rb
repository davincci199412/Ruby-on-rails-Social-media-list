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

ActiveRecord::Schema.define(version: 20171108085855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  # relationship between clients and legislators

  create_table "clients_legislators", id: false, force: :cascade do |t|
    t.bigint "legislator_id", null: false
    t.bigint "client_id", null: false
  end

  create_table "legislators", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "facebook_id"
    t.string "twitter_id"
    t.string "other_id"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "social"
    t.string "customer_name"
    t.string "customer_id"
    t.string "link"
    t.datetime "posted_datetime"
    t.text "post_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
