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

ActiveRecord::Schema.define(version: 2019_03_11_034710) do

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

  create_table "dim_emp_users", force: :cascade do |t|
    t.string "emp_id", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "login_id", default: "", null: false
    t.boolean "active", default: true
    t.date "hire_date"
    t.date "term_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emp_id"], name: "index_dim_emp_users_on_emp_id", unique: true
  end

  create_table "dim_ivr_params", force: :cascade do |t|
    t.string "ivr_param", default: "", null: false
    t.integer "ivr_code"
    t.integer "dim_client_id"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dim_client_id"], name: "index_dim_ivr_params_on_dim_client_id"
    t.index ["ivr_param"], name: "index_dim_ivr_params_on_ivr_param", unique: true
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

  create_table "dim_uip_users", force: :cascade do |t|
    t.string "user_id", default: "", null: false
    t.integer "dim_emp_user_id"
    t.integer "dim_client_id"
    t.date "start_date"
    t.date "end_date"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dim_client_id"], name: "index_dim_uip_users_on_dim_client_id"
    t.index ["dim_emp_user_id"], name: "index_dim_uip_users_on_dim_emp_user_id"
    t.index ["user_id"], name: "index_dim_uip_users_on_user_id", unique: true
  end

  create_table "fact_call_details", force: :cascade do |t|
    t.integer "dim_client_id"
    t.integer "dim_timezone_id"
    t.integer "dim_call_category_id"
    t.integer "dim_call_type_id"
    t.integer "dim_call_action_id"
    t.integer "dim_call_action_reason_id"
    t.integer "dim_disp_id"
    t.integer "dim_service_id"
    t.integer "call_ivr_param_1_id"
    t.integer "call_ivr_param_2_id"
    t.integer "call_ivr_param_3_id"
    t.integer "call_ivr_param_4_id"
    t.integer "call_ivr_param_9_id"
    t.integer "call_ivr_param_10_id"
    t.integer "call_ivr_param_16_id"
    t.integer "call_ivr_param_18_id"
    t.integer "call_ivr_param_19_id"
    t.integer "call_id"
    t.integer "call_seq"
    t.string "call_dialed_num"
    t.datetime "call_answer_date"
    t.datetime "call_end_date"
    t.datetime "call_end_date_tz"
    t.datetime "call_start_date"
    t.datetime "call_start_date_tz"
    t.datetime "call_wrap_end_date"
    t.integer "call_hold_number"
    t.integer "call_queue_time"
    t.integer "call_talk_time"
    t.integer "call_hold_time"
    t.integer "call_wrap_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["call_ivr_param_10_id"], name: "index_fact_call_details_on_call_ivr_param_10_id"
    t.index ["call_ivr_param_16_id"], name: "index_fact_call_details_on_call_ivr_param_16_id"
    t.index ["call_ivr_param_18_id"], name: "index_fact_call_details_on_call_ivr_param_18_id"
    t.index ["call_ivr_param_19_id"], name: "index_fact_call_details_on_call_ivr_param_19_id"
    t.index ["call_ivr_param_1_id"], name: "index_fact_call_details_on_call_ivr_param_1_id"
    t.index ["call_ivr_param_2_id"], name: "index_fact_call_details_on_call_ivr_param_2_id"
    t.index ["call_ivr_param_3_id"], name: "index_fact_call_details_on_call_ivr_param_3_id"
    t.index ["call_ivr_param_4_id"], name: "index_fact_call_details_on_call_ivr_param_4_id"
    t.index ["call_ivr_param_9_id"], name: "index_fact_call_details_on_call_ivr_param_9_id"
    t.index ["dim_call_action_id"], name: "index_fact_call_details_on_dim_call_action_id"
    t.index ["dim_call_action_reason_id"], name: "index_fact_call_details_on_dim_call_action_reason_id"
    t.index ["dim_call_category_id"], name: "index_fact_call_details_on_dim_call_category_id"
    t.index ["dim_call_type_id"], name: "index_fact_call_details_on_dim_call_type_id"
    t.index ["dim_client_id"], name: "index_fact_call_details_on_dim_client_id"
    t.index ["dim_disp_id"], name: "index_fact_call_details_on_dim_disp_id"
    t.index ["dim_service_id"], name: "index_fact_call_details_on_dim_service_id"
    t.index ["dim_timezone_id"], name: "index_fact_call_details_on_dim_timezone_id"
  end

  create_table "tmp_fact_call_details", force: :cascade do |t|
    t.string "tmp_parent_project"
    t.string "tmp_project_name"
    t.string "tmp_timezone"
    t.string "tmp_call_category"
    t.string "tmp_call_type"
    t.string "tmp_call_action"
    t.string "tmp_call_action_reason"
    t.string "tmp_disp"
    t.integer "tmp_service_id"
    t.string "tmp_service_name"
    t.integer "tmp_orig_srv"
    t.string "tmp_user_id"
    t.string "tmp_ivr_param_1"
    t.string "tmp_ivr_param_2"
    t.string "tmp_ivr_param_3"
    t.string "tmp_ivr_param_4"
    t.string "tmp_ivr_param_9"
    t.string "tmp_ivr_param_10"
    t.string "tmp_ivr_param_16"
    t.string "tmp_ivr_param_18"
    t.string "tmp_ivr_param_19"
    t.integer "tmp_call"
    t.integer "tmp_seq"
    t.string "tmp_dialed_num"
    t.datetime "tmp_answer_date"
    t.datetime "tmp_end_date"
    t.datetime "tmp_end_date_tz"
    t.datetime "tmp_start_date"
    t.datetime "tmp_start_date_tz"
    t.datetime "tmp_wrap_end_date"
    t.integer "tmp_hold_number"
    t.integer "tmp_queue_time"
    t.integer "tmp_talk_time"
    t.integer "tmp_hold_time"
    t.integer "tmp_wrap_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
