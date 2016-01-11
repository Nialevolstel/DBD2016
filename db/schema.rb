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

ActiveRecord::Schema.define(version: 20160109224118) do

  create_table "article_clasifications", force: :cascade do |t|
    t.string   "nombre_clasificacion", limit: 15, null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "hospital_ward_surgeries", force: :cascade do |t|
    t.integer  "hospital_ward_id", limit: 4
    t.integer  "surgery_id",       limit: 4
    t.date     "fecha_inicio"
    t.time     "hora_inicio"
    t.date     "fecha_fin"
    t.date     "hora_fin"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "hospital_ward_surgeries", ["hospital_ward_id"], name: "index_hospital_ward_surgeries_on_hospital_ward_id", using: :btree
  add_index "hospital_ward_surgeries", ["surgery_id"], name: "index_hospital_ward_surgeries_on_surgery_id", using: :btree

  create_table "hospital_wards", force: :cascade do |t|
    t.integer  "numero_sala", limit: 4, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "hospital_wards", ["numero_sala"], name: "index_hospital_wards_on_numero_sala", unique: true, using: :btree

  create_table "instrument_types", force: :cascade do |t|
    t.integer  "article_clasification_id",   limit: 4
    t.string   "nombre_instrumentaria",      limit: 255,   null: false
    t.text     "descripcion_instrumentaria", limit: 65535
    t.integer  "precio_por_hora",            limit: 4,     null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "instrument_types", ["article_clasification_id"], name: "index_instrument_types_on_article_clasification_id", using: :btree
  add_index "instrument_types", ["nombre_instrumentaria"], name: "index_instrument_types_on_nombre_instrumentaria", unique: true, using: :btree

  create_table "instruments", force: :cascade do |t|
    t.integer  "instrument_type_id", limit: 4
    t.integer  "hospital_ward_id",   limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "instruments", ["hospital_ward_id"], name: "index_instruments_on_hospital_ward_id", using: :btree
  add_index "instruments", ["instrument_type_id"], name: "index_instruments_on_instrument_type_id", using: :btree

  create_table "medical_staff_specialities", force: :cascade do |t|
    t.integer  "speciality_id",    limit: 4
    t.integer  "medical_staff_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "medical_staff_specialities", ["medical_staff_id"], name: "index_medical_staff_specialities_on_medical_staff_id", using: :btree
  add_index "medical_staff_specialities", ["speciality_id"], name: "index_medical_staff_specialities_on_speciality_id", using: :btree

  create_table "medical_staffs", force: :cascade do |t|
    t.string   "rut_personal_medico", limit: 12, null: false
    t.string   "primer_nombre",       limit: 50, null: false
    t.string   "segundo_nombre",      limit: 50
    t.string   "apellido_paterno",    limit: 50, null: false
    t.string   "apellido_materno",    limit: 50
    t.string   "sexo",                limit: 1,  null: false
    t.string   "telefono_fijo",       limit: 15
    t.string   "telefono_movil",      limit: 15
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "medical_staffs", ["rut_personal_medico"], name: "index_medical_staffs_on_rut_personal_medico", unique: true, using: :btree

  create_table "medical_team_medical_staffs", force: :cascade do |t|
    t.integer  "medical_team_id",  limit: 4
    t.integer  "medical_staff_id", limit: 4
    t.integer  "speciality_id",    limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "medical_team_medical_staffs", ["medical_staff_id"], name: "index_medical_team_medical_staffs_on_medical_staff_id", using: :btree
  add_index "medical_team_medical_staffs", ["medical_team_id"], name: "index_medical_team_medical_staffs_on_medical_team_id", using: :btree
  add_index "medical_team_medical_staffs", ["speciality_id"], name: "index_medical_team_medical_staffs_on_speciality_id", using: :btree

  create_table "medical_teams", force: :cascade do |t|
    t.boolean  "es_valido",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "rut_paciente",     limit: 12, null: false
    t.string   "primer_nombre",    limit: 50, null: false
    t.string   "segundo_nombre",   limit: 50
    t.string   "apellido_paterno", limit: 50, null: false
    t.string   "apellido_materno", limit: 50
    t.date     "fecha_nacimiento",            null: false
    t.string   "sexo",             limit: 1,  null: false
    t.string   "telefono_fijo",    limit: 15
    t.string   "telefono_movil",   limit: 15
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "patients", ["rut_paciente"], name: "index_patients_on_rut_paciente", unique: true, using: :btree

  create_table "receipt_states", force: :cascade do |t|
    t.string   "nombre_stado", limit: 15, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "receipt_states", ["nombre_stado"], name: "index_receipt_states_on_nombre_stado", unique: true, using: :btree

  create_table "receipts", force: :cascade do |t|
    t.integer  "surgery_id",       limit: 4
    t.integer  "monto_total",      limit: 4, null: false
    t.integer  "receipt_state_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "receipts", ["receipt_state_id"], name: "index_receipts_on_receipt_state_id", using: :btree
  add_index "receipts", ["surgery_id"], name: "index_receipts_on_surgery_id", using: :btree

  create_table "specialities", force: :cascade do |t|
    t.string   "nombre_especialidad", limit: 50, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "specialities", ["nombre_especialidad"], name: "index_specialities_on_nombre_especialidad", unique: true, using: :btree

  create_table "supplies", force: :cascade do |t|
    t.string   "nombre_insumo",            limit: 50, null: false
    t.integer  "stock_insumo",             limit: 4,  null: false
    t.integer  "costo_insumo",             limit: 4,  null: false
    t.integer  "article_clasification_id", limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "supplies", ["article_clasification_id"], name: "index_supplies_on_article_clasification_id", using: :btree
  add_index "supplies", ["nombre_insumo"], name: "index_supplies_on_nombre_insumo", unique: true, using: :btree

  create_table "surgeries", force: :cascade do |t|
    t.integer  "surgery_type_id",  limit: 4
    t.integer  "user_id",          limit: 4
    t.integer  "patient_id",       limit: 4
    t.integer  "surgery_state_id", limit: 4
    t.integer  "medical_team_id",  limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "surgeries", ["medical_team_id"], name: "index_surgeries_on_medical_team_id", using: :btree
  add_index "surgeries", ["patient_id"], name: "index_surgeries_on_patient_id", using: :btree
  add_index "surgeries", ["surgery_state_id"], name: "index_surgeries_on_surgery_state_id", using: :btree
  add_index "surgeries", ["surgery_type_id"], name: "index_surgeries_on_surgery_type_id", using: :btree
  add_index "surgeries", ["user_id"], name: "index_surgeries_on_user_id", using: :btree

  create_table "surgery_states", force: :cascade do |t|
    t.string   "nombre_estado", limit: 15, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "surgery_states", ["nombre_estado"], name: "index_surgery_states_on_nombre_estado", unique: true, using: :btree

  create_table "surgery_supplies", force: :cascade do |t|
    t.integer  "surgery_id",         limit: 4
    t.integer  "supply_id",          limit: 4
    t.integer  "cantidad_utilizada", limit: 4, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "surgery_supplies", ["supply_id"], name: "index_surgery_supplies_on_supply_id", using: :btree
  add_index "surgery_supplies", ["surgery_id"], name: "index_surgery_supplies_on_surgery_id", using: :btree

  create_table "surgery_type_instrument_types", force: :cascade do |t|
    t.integer  "surgery_type_id",    limit: 4
    t.integer  "instrument_type_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "surgery_type_instrument_types", ["instrument_type_id"], name: "index_surgery_type_instrument_types_on_instrument_type_id", using: :btree
  add_index "surgery_type_instrument_types", ["surgery_type_id"], name: "index_surgery_type_instrument_types_on_surgery_type_id", using: :btree

  create_table "surgery_types", force: :cascade do |t|
    t.string   "nombre_cirugia", limit: 50, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "surgery_types", ["nombre_cirugia"], name: "index_surgery_types_on_nombre_cirugia", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "rut_gestor",             limit: 12,               null: false
    t.string   "primer_nombre",          limit: 50,               null: false
    t.string   "segundo_nombre",         limit: 50
    t.string   "apellido_paterno",       limit: 50,               null: false
    t.string   "apellido_materno",       limit: 50
    t.string   "sexo",                   limit: 1,                null: false
    t.string   "telefono_fijo",          limit: 15
    t.string   "telefono_movil",         limit: 15
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["rut_gestor"], name: "index_users_on_rut_gestor", unique: true, using: :btree

  add_foreign_key "hospital_ward_surgeries", "hospital_wards"
  add_foreign_key "hospital_ward_surgeries", "surgeries"
  add_foreign_key "instrument_types", "article_clasifications"
  add_foreign_key "instruments", "hospital_wards"
  add_foreign_key "instruments", "instrument_types"
  add_foreign_key "medical_staff_specialities", "medical_staffs"
  add_foreign_key "medical_staff_specialities", "specialities"
  add_foreign_key "medical_team_medical_staffs", "medical_staffs"
  add_foreign_key "medical_team_medical_staffs", "medical_teams"
  add_foreign_key "medical_team_medical_staffs", "specialities"
  add_foreign_key "receipts", "receipt_states"
  add_foreign_key "receipts", "surgeries"
  add_foreign_key "supplies", "article_clasifications"
  add_foreign_key "surgeries", "medical_teams"
  add_foreign_key "surgeries", "patients"
  add_foreign_key "surgeries", "surgery_states"
  add_foreign_key "surgeries", "surgery_types"
  add_foreign_key "surgeries", "users"
  add_foreign_key "surgery_supplies", "supplies"
  add_foreign_key "surgery_supplies", "surgeries"
  add_foreign_key "surgery_type_instrument_types", "instrument_types"
  add_foreign_key "surgery_type_instrument_types", "surgery_types"
end
