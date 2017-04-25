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

ActiveRecord::Schema.define(version: 20170425150812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reg_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.string   "avatar"
    t.index ["email"], name: "index_reg_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_reg_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "body",        null: false
    t.string   "image_path"
    t.integer  "reg_user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["reg_user_id"], name: "index_reviews_on_reg_user_id", using: :btree
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "vote",        null: false
    t.integer  "review_id"
    t.integer  "reg_user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["reg_user_id"], name: "index_votes_on_reg_user_id", using: :btree
    t.index ["review_id"], name: "index_votes_on_review_id", using: :btree
  end

end
