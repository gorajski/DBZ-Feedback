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

ActiveRecord::Schema.define(version: 20160805184806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "author_id",                                null: false
    t.integer  "recipient_id",                             null: false
    t.date     "pair_date"
    t.string   "project_name"
    t.boolean  "show_up",                                  null: false
    t.boolean  "check_in",                                 null: false
    t.integer  "percent_drive",                            null: false
    t.integer  "clarity_of_communication",                 null: false
    t.string   "content",                                  null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.boolean  "appropriate"
    t.boolean  "exemplary",                default: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "doable",      null: false
    t.integer  "benevolent",  null: false
    t.integer  "zeroed_in",   null: false
    t.integer  "reviewer_id", null: false
    t.integer  "feedback_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "full_name",                       null: false
    t.string   "email",                           null: false
    t.boolean  "is_admin",        default: false
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
