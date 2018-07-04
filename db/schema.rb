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

ActiveRecord::Schema.define(version: 20180613015404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "titulo"
    t.string   "cuerpo"
    t.date     "fecha"
    t.string   "autor"
    t.boolean  "destacado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "foto"
  end

  create_table "calendars", force: :cascade do |t|
    t.text     "fase"
    t.date     "fecha"
    t.time     "hora"
    t.integer  "stadium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stadium_id"], name: "index_calendars_on_stadium_id", using: :btree
  end

  create_table "coach_teams", force: :cascade do |t|
    t.datetime "debut"
    t.integer  "country_id"
    t.integer  "coach_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_coach_teams_on_coach_id", using: :btree
    t.index ["country_id"], name: "index_coach_teams_on_country_id", using: :btree
  end

  create_table "coaches", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "apodo"
    t.datetime "fecha_nacimiento"
    t.string   "ciudad_nacimiento"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apodo"
    t.string   "escudo"
    t.string   "bandera"
    t.string   "grupo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "minuto"
    t.string   "tipo",       limit: 40
    t.boolean  "gol"
    t.integer  "match_id"
    t.integer  "player_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["match_id"], name: "index_events_on_match_id", using: :btree
    t.index ["player_id"], name: "index_events_on_player_id", using: :btree
  end

  create_table "goal_pools", force: :cascade do |t|
    t.integer  "cantidad"
    t.integer  "prediction_id"
    t.integer  "country_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["country_id"], name: "index_goal_pools_on_country_id", using: :btree
    t.index ["prediction_id"], name: "index_goal_pools_on_prediction_id", using: :btree
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "posesion"
    t.integer  "calendar_id"
    t.integer  "country_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["calendar_id"], name: "index_matches_on_calendar_id", using: :btree
    t.index ["country_id"], name: "index_matches_on_country_id", using: :btree
  end

  create_table "media", force: :cascade do |t|
    t.string   "url"
    t.string   "nombre"
    t.string   "tipo"
    t.date     "fecha"
    t.integer  "ancho"
    t.integer  "alto"
    t.integer  "size"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "media_carrusels", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media_tags", force: :cascade do |t|
    t.integer  "medium_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medium_id"], name: "index_media_tags_on_medium_id", using: :btree
    t.index ["tag_id"], name: "index_media_tags_on_tag_id", using: :btree
  end

  create_table "media_videos", force: :cascade do |t|
    t.string   "url"
    t.string   "titulo"
    t.string   "descripcion"
    t.date     "fecha"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "fecha_nacimiento"
    t.string   "ciudad_nacimiento"
    t.string   "posicion"
    t.integer  "dorsal"
    t.string   "apodo"
    t.datetime "debut"
    t.integer  "participaciones"
    t.string   "foto"
    t.integer  "goles"
    t.integer  "country_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "pools", force: :cascade do |t|
    t.integer  "puntos"
    t.string   "tipo",       limit: 50
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["user_id"], name: "index_pools_on_user_id", using: :btree
  end

  create_table "predictions", force: :cascade do |t|
    t.integer  "calendar_id"
    t.integer  "pool_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["calendar_id"], name: "index_predictions_on_calendar_id", using: :btree
    t.index ["pool_id"], name: "index_predictions_on_pool_id", using: :btree
  end

  create_table "stadia", force: :cascade do |t|
    t.text     "ciudad"
    t.integer  "capacidad"
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "cedula"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.date     "nacimiento"
    t.string   "estatus"
    t.integer  "postal"
    t.boolean  "admin",                  default: false
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.string   "invited_by_type"
    t.integer  "invited_by_id"
    t.integer  "invitations_count",      default: 0
    t.integer  "country_id"
    t.index ["country_id"], name: "index_users_on_country_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
    t.index ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "calendars", "stadia"
  add_foreign_key "coach_teams", "coaches"
  add_foreign_key "coach_teams", "countries"
  add_foreign_key "events", "matches"
  add_foreign_key "events", "players"
  add_foreign_key "goal_pools", "countries"
  add_foreign_key "goal_pools", "predictions"
  add_foreign_key "matches", "calendars"
  add_foreign_key "matches", "countries"
  add_foreign_key "media_tags", "media"
  add_foreign_key "media_tags", "tags"
  add_foreign_key "pools", "users"
  add_foreign_key "predictions", "calendars"
  add_foreign_key "predictions", "pools"
  add_foreign_key "users", "countries"
end
