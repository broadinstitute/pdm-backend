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

ActiveRecord::Schema.define(version: 2018_06_19_210933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "allergies", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_allergies_on_profile_id"
  end

  create_table "care_plans", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_care_plans_on_profile_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name", null: false
    t.string "type", null: false
    t.string "base_endpoint"
    t.string "token_endpoint"
    t.string "authorization_endpoint"
    t.string "default_scopes"
    t.string "client_id"
    t.string "client_secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_conditions_on_profile_id"
  end

  create_table "data_receipts", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "provider_id", null: false
    t.string "data_type", null: false
    t.jsonb "data", null: false
    t.boolean "processed"
    t.datetime "processed_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_data_receipts_on_profile_id"
    t.index ["provider_id"], name: "index_data_receipts_on_provider_id"
  end

  create_table "devices", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_devices_on_profile_id"
  end

  create_table "documents", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_documents_on_profile_id"
  end

  create_table "encounters", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_encounters_on_profile_id"
  end

  create_table "goals", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_goals_on_profile_id"
  end

  create_table "immunizations", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_immunizations_on_profile_id"
  end

  create_table "medication_administrations", force: :cascade do |t|
    t.string "resource_id", null: false
    t.bigint "profile_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_medication_administrations_on_profile_id"
  end

  create_table "medication_requests", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_medication_requests_on_profile_id"
  end

  create_table "medication_statements", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_medication_statements_on_profile_id"
  end

  create_table "oauth_access_grants", force: :cascade do |t|
    t.integer "resource_owner_id", null: false
    t.bigint "application_id", null: false
    t.string "token", null: false
    t.integer "expires_in", null: false
    t.text "redirect_uri", null: false
    t.datetime "created_at", null: false
    t.datetime "revoked_at"
    t.string "scopes"
    t.index ["application_id"], name: "index_oauth_access_grants_on_application_id"
    t.index ["token"], name: "index_oauth_access_grants_on_token", unique: true
  end

  create_table "oauth_access_tokens", force: :cascade do |t|
    t.integer "resource_owner_id"
    t.bigint "application_id"
    t.string "token", null: false
    t.string "refresh_token"
    t.integer "expires_in"
    t.datetime "revoked_at"
    t.datetime "created_at", null: false
    t.string "scopes"
    t.string "previous_refresh_token", default: "", null: false
    t.index ["application_id"], name: "index_oauth_access_tokens_on_application_id"
    t.index ["refresh_token"], name: "index_oauth_access_tokens_on_refresh_token", unique: true
    t.index ["resource_owner_id"], name: "index_oauth_access_tokens_on_resource_owner_id"
    t.index ["token"], name: "index_oauth_access_tokens_on_token", unique: true
  end

  create_table "oauth_applications", force: :cascade do |t|
    t.string "name", null: false
    t.string "uid", null: false
    t.string "secret", null: false
    t.text "redirect_uri", null: false
    t.string "scopes", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uid"], name: "index_oauth_applications_on_uid", unique: true
  end

  create_table "observations", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_observations_on_profile_id"
  end

  create_table "operational_outcomes", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "resource_id"
    t.boolean "resolved", default: false, null: false
    t.string "oo_type"
    t.jsonb "data"
    t.index ["profile_id"], name: "index_operational_outcomes_on_profile_id"
    t.index ["resource_id"], name: "index_operational_outcomes_on_resource_id"
  end

  create_table "practitioners", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_practitioners_on_profile_id"
  end

  create_table "procedures", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "resource_id", null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_procedures_on_profile_id"
  end

  create_table "profile_providers", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "provider_id", null: false
    t.string "subject_id"
    t.string "access_token"
    t.string "refresh_token"
    t.datetime "last_sync"
    t.string "scopes"
    t.index ["profile_id"], name: "index_profile_providers_on_profile_id"
    t.index ["provider_id"], name: "index_profile_providers_on_provider_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.uuid "patient_id", default: -> { "uuid_generate_v4()" }, null: false
    t.string "name", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.date "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "providers", force: :cascade do |t|
    t.integer "parent_id"
    t.string "provider_type", null: false
    t.string "name", null: false
    t.string "description", default: "", null: false
    t.string "base_endpoint"
    t.string "token_endpoint"
    t.string "authorization_endpoint"
    t.string "scopes"
    t.string "client_id"
    t.string "client_secret"
    t.index ["parent_id"], name: "index_providers_on_parent_id"
  end

  create_table "resource_histories", force: :cascade do |t|
    t.bigint "resource_id"
    t.bigint "provider_id"
    t.bigint "transaction_id"
    t.string "resource_type"
    t.string "provider_resource_id"
    t.string "provider_resource_version"
    t.string "fhir_version"
    t.boolean "merged"
    t.boolean "boolean"
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_resource_histories_on_provider_id"
    t.index ["resource_id"], name: "index_resource_histories_on_resource_id"
    t.index ["transaction_id"], name: "index_resource_histories_on_transaction_id"
  end

  create_table "resources", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "profile_id", null: false
    t.bigint "provider_id", null: false
    t.bigint "transaction_id", null: false
    t.string "resource_type", null: false
    t.string "provider_resource_id", null: false
    t.string "provider_resource_version", null: false
    t.string "data_specification_version", default: "", null: false
    t.boolean "merged", default: false, null: false
    t.boolean "boolean", default: false, null: false
    t.jsonb "resource"
    t.jsonb "jsonb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_resources_on_profile_id"
    t.index ["provider_id"], name: "index_resources_on_provider_id"
    t.index ["transaction_id"], name: "index_resources_on_transaction_id"
    t.index ["user_id"], name: "index_resources_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "oauth_access_grants", "oauth_applications", column: "application_id"
  add_foreign_key "oauth_access_tokens", "oauth_applications", column: "application_id"
  add_foreign_key "providers", "providers", column: "parent_id"
end
