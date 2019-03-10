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

ActiveRecord::Schema.define(version: 2019_03_10_060345) do

  create_table "dim_call_action_reasons", force: :cascade do |t|
    t.string "call_action_reason", limit: 50, default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["call_action_reason"], name: "index_dim_call_action_reasons_on_call_action_reason", unique: true
  end

  create_table "dim_call_actions", force: :cascade do |t|
    t.string "call_action", limit: 50, default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["call_action"], name: "index_dim_call_actions_on_call_action", unique: true
  end

  create_table "dim_call_categories", force: :cascade do |t|
    t.string "call_category", limit: 20, default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["call_category"], name: "index_dim_call_categories_on_call_category", unique: true
  end

  create_table "dim_call_types", force: :cascade do |t|
    t.string "call_type", limit: 20, default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["call_type"], name: "index_dim_call_types_on_call_type", unique: true
  end

  create_table "dim_clients", force: :cascade do |t|
    t.string "name", limit: 100, default: "", null: false
    t.string "code", limit: 20, default: "", null: false
    t.integer "dim_project_id"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dim_project_id"], name: "index_dim_clients_on_dim_project_id"
    t.index ["name"], name: "index_dim_clients_on_name", unique: true
  end

  create_table "dim_disps", force: :cascade do |t|
    t.string "disp", limit: 100, default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disp"], name: "index_dim_disps_on_disp", unique: true
  end

  create_table "dim_languages", force: :cascade do |t|
    t.string "name", limit: 50, default: "", null: false
    t.string "code", limit: 10, default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_dim_languages_on_name", unique: true
  end

  create_table "dim_projects", force: :cascade do |t|
    t.string "name", limit: 100, default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_dim_projects_on_name", unique: true
  end

  create_table "dim_regions", force: :cascade do |t|
    t.string "name", limit: 50, default: "", null: false
    t.string "label", limit: 20, default: "", null: false
    t.string "code", limit: 5, default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_dim_regions_on_name", unique: true
  end

  create_table "dim_services", force: :cascade do |t|
    t.string "name", limit: 100, default: "", null: false
    t.integer "dim_language_id"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dim_language_id"], name: "index_dim_services_on_dim_language_id"
    t.index ["name"], name: "index_dim_services_on_name", unique: true
  end

  create_table "dim_timezones", force: :cascade do |t|
    t.string "name", limit: 50, default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_dim_timezones_on_name", unique: true
  end

  create_table "dim_uip_services", force: :cascade do |t|
    t.integer "service_id"
    t.integer "dim_service_id"
    t.integer "dim_client_id"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dim_client_id"], name: "index_dim_uip_services_on_dim_client_id"
    t.index ["dim_service_id"], name: "index_dim_uip_services_on_dim_service_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "username", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "role", default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
