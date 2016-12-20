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

ActiveRecord::Schema.define(version: 20160429130357) do

  create_table "dergoemails", force: :cascade do |t|
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.time     "interview_time"
  end

  create_table "formularis", force: :cascade do |t|
    t.string   "pozita"
    t.string   "emri"
    t.string   "mbiemri"
    t.date     "ditelindja"
    t.string   "vendlindja"
    t.string   "nacionaliteti"
    t.string   "leternjoftimi"
    t.string   "tel"
    t.string   "email"
    t.date     "edukimi_from"
    t.date     "edukimi_to"
    t.boolean  "ongoing"
    t.string   "edukimi_institucioni"
    t.string   "edukimi_drejtimi"
    t.string   "edukimi_titulli"
    t.date     "eksperienca_from"
    t.date     "eksperienca_to"
    t.string   "eksperienca_kompania"
    t.string   "eksperienca_pozita"
    t.string   "gjuha"
    t.string   "gjuha_niveli"
    t.string   "njohurit_kompjuterike"
    t.string   "referenca_emri"
    t.string   "referenca_file"
    t.string   "letra_motivuese"
    t.string   "cv_file"
    t.text     "intervista"
    t.text     "testet"
    t.date     "kontrata_from"
    t.date     "kontrata_to"
    t.integer  "page"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
    t.integer  "pozi_id"
    t.integer  "status_id"
    t.integer  "dergoemail_id"
    t.integer  "qytetet_id"
    t.integer  "gjuha_id"
    t.integer  "pc_id"
    t.string   "adresa"
    t.boolean  "level"
    t.string   "trajnimi_institucioni"
    t.string   "trajnimi_drejtimi"
    t.date     "trajnimi_from"
    t.date     "trajnimi_to"
  end

  create_table "gjuhas", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.integer  "pozi_id"
    t.string   "emri"
    t.string   "mbiemri"
    t.integer  "status_id"
    t.date     "ditelindja"
    t.string   "vendlindja"
    t.string   "tel"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kontrata", force: :cascade do |t|
    t.string   "biznesi"
    t.string   "nr_biznesit"
    t.string   "emri"
    t.string   "emri_prindit"
    t.string   "mbiemri"
    t.string   "vendlindja"
    t.date     "ditelindja"
    t.string   "adresa"
    t.string   "qyteti"
    t.string   "shteti"
    t.string   "leternjoftimi"
    t.string   "pozita"
    t.date     "kontrata_prej"
    t.date     "kontrata_deri"
    t.string   "orari_jave"
    t.string   "java_ditet"
    t.string   "orari_from"
    t.string   "orari_to"
    t.string   "pauza"
    t.string   "pushimi_vjetore"
    t.string   "paga_kontrata"
    t.string   "paga_text"
    t.date     "data_nenshkrimit"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "formulari_id"
    t.integer  "pk",               default: 0
    t.integer  "vk",               default: 0
    t.string   "email"
    t.integer  "punetori_id"
  end

  create_table "pcs", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pozis", force: :cascade do |t|
    t.string   "description"
    t.string   "job_description"
    t.string   "skills"
    t.string   "about_compnay"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "kodi"
  end

  create_table "punetoris", force: :cascade do |t|
    t.string   "emri"
    t.string   "mbiemri"
    t.string   "telefoni"
    t.string   "ditelindja"
    t.string   "letenjoftimi"
    t.string   "vendlindja"
    t.string   "shkollimi"
    t.string   "kontrata_from"
    t.string   "kontrata_to"
    t.string   "email"
    t.string   "encrypted_password"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "referenca"
    t.boolean  "statusi_kontrates"
  end

  create_table "qytetets", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "refuzuars", force: :cascade do |t|
    t.integer  "pozi_id"
    t.string   "emri"
    t.string   "mbiemri"
    t.integer  "status_id"
    t.date     "ditelindja"
    t.string   "vendlindja"
    t.string   "tel"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "qytetet_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
