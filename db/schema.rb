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

ActiveRecord::Schema.define(version: 20160114182919) do

  create_table "apex$_acl", force: :cascade do |t|
    t.decimal  "ws_app_id",            null: false
    t.string   "username",             null: false
    t.string   "priv",       limit: 1, null: false
    t.datetime "created_on",           null: false
    t.string   "created_by",           null: false
    t.datetime "updated_on"
    t.string   "updated_by"
  end

  add_index "apex$_acl", ["ws_app_id"], name: "apex$_acl_idx1"

  create_table "apex$_ws_files", force: :cascade do |t|
    t.decimal  "ws_app_id",                        null: false
    t.decimal  "data_grid_id"
    t.decimal  "row_id"
    t.decimal  "webpage_id"
    t.string   "component_level",     limit: 30
    t.string   "name",                             null: false
    t.string   "image_alias"
    t.string   "image_attributes"
    t.binary   "content"
    t.datetime "content_last_update"
    t.string   "mime_type",                        null: false
    t.string   "content_charset"
    t.string   "content_filename",    limit: 500
    t.string   "description",         limit: 4000
    t.datetime "created_on",                       null: false
    t.string   "created_by",                       null: false
    t.datetime "updated_on"
    t.string   "updated_by"
  end

  add_index "apex$_ws_files", ["ws_app_id", "data_grid_id", "row_id"], name: "apex$_ws_files_idx1"
  add_index "apex$_ws_files", ["ws_app_id", "webpage_id"], name: "apex$_ws_files_idx2"

  create_table "apex$_ws_history", id: false, force: :cascade do |t|
    t.decimal  "row_id",                           null: false
    t.decimal  "ws_app_id",                        null: false
    t.decimal  "data_grid_id",                     null: false
    t.string   "column_name"
    t.string   "old_value",           limit: 4000
    t.string   "new_value",           limit: 4000
    t.string   "application_user_id"
    t.datetime "change_date"
  end

  add_index "apex$_ws_history", ["ws_app_id", "data_grid_id", "row_id"], name: "apex$_ws_history_idx"

  create_table "apex$_ws_links", force: :cascade do |t|
    t.decimal  "ws_app_id",                     null: false
    t.decimal  "data_grid_id"
    t.decimal  "row_id"
    t.decimal  "webpage_id"
    t.string   "component_level",  limit: 30
    t.string   "tags",             limit: 4000
    t.string   "show_on_homepage", limit: 1
    t.string   "link_name",                     null: false
    t.string   "url",              limit: 4000, null: false
    t.string   "link_description", limit: 4000
    t.decimal  "display_sequence"
    t.datetime "created_on",                    null: false
    t.string   "created_by",                    null: false
    t.datetime "updated_on"
    t.string   "updated_by"
  end

  add_index "apex$_ws_links", ["ws_app_id", "data_grid_id", "row_id"], name: "apex$_ws_links_idx1"
  add_index "apex$_ws_links", ["ws_app_id", "webpage_id"], name: "apex$_ws_links_idx2"

  create_table "apex$_ws_notes", force: :cascade do |t|
    t.decimal  "ws_app_id",                  null: false
    t.decimal  "data_grid_id"
    t.decimal  "row_id"
    t.decimal  "webpage_id"
    t.string   "component_level", limit: 30
    t.text     "content"
    t.datetime "created_on",                 null: false
    t.string   "created_by",                 null: false
    t.datetime "updated_on"
    t.string   "updated_by"
  end

  add_index "apex$_ws_notes", ["ws_app_id", "data_grid_id", "row_id"], name: "apex$_ws_notes_idx1"
  add_index "apex$_ws_notes", ["ws_app_id", "webpage_id"], name: "apex$_ws_notes_idx2"

  create_table "apex$_ws_rows", force: :cascade do |t|
    t.decimal  "ws_app_id",                  null: false
    t.decimal  "data_grid_id",               null: false
    t.string   "unique_value"
    t.string   "tags",          limit: 4000
    t.decimal  "parent_row_id"
    t.string   "owner"
    t.string   "geocode",       limit: 512
    t.decimal  "load_order"
    t.decimal  "change_count"
    t.datetime "created_on",                 null: false
    t.string   "created_by",                 null: false
    t.datetime "updated_on"
    t.string   "updated_by"
    t.string   "c001",          limit: 4000
    t.string   "c002",          limit: 4000
    t.string   "c003",          limit: 4000
    t.string   "c004",          limit: 4000
    t.string   "c005",          limit: 4000
    t.string   "c006",          limit: 4000
    t.string   "c007",          limit: 4000
    t.string   "c008",          limit: 4000
    t.string   "c009",          limit: 4000
    t.string   "c010",          limit: 4000
    t.string   "c011",          limit: 4000
    t.string   "c012",          limit: 4000
    t.string   "c013",          limit: 4000
    t.string   "c014",          limit: 4000
    t.string   "c015",          limit: 4000
    t.string   "c016",          limit: 4000
    t.string   "c017",          limit: 4000
    t.string   "c018",          limit: 4000
    t.string   "c019",          limit: 4000
    t.string   "c020",          limit: 4000
    t.string   "c021",          limit: 4000
    t.string   "c022",          limit: 4000
    t.string   "c023",          limit: 4000
    t.string   "c024",          limit: 4000
    t.string   "c025",          limit: 4000
    t.string   "c026",          limit: 4000
    t.string   "c027",          limit: 4000
    t.string   "c028",          limit: 4000
    t.string   "c029",          limit: 4000
    t.string   "c030",          limit: 4000
    t.string   "c031",          limit: 4000
    t.string   "c032",          limit: 4000
    t.string   "c033",          limit: 4000
    t.string   "c034",          limit: 4000
    t.string   "c035",          limit: 4000
    t.string   "c036",          limit: 4000
    t.string   "c037",          limit: 4000
    t.string   "c038",          limit: 4000
    t.string   "c039",          limit: 4000
    t.string   "c040",          limit: 4000
    t.string   "c041",          limit: 4000
    t.string   "c042",          limit: 4000
    t.string   "c043",          limit: 4000
    t.string   "c044",          limit: 4000
    t.string   "c045",          limit: 4000
    t.string   "c046",          limit: 4000
    t.string   "c047",          limit: 4000
    t.string   "c048",          limit: 4000
    t.string   "c049",          limit: 4000
    t.string   "c050",          limit: 4000
    t.decimal  "n001"
    t.decimal  "n002"
    t.decimal  "n003"
    t.decimal  "n004"
    t.decimal  "n005"
    t.decimal  "n006"
    t.decimal  "n007"
    t.decimal  "n008"
    t.decimal  "n009"
    t.decimal  "n010"
    t.decimal  "n011"
    t.decimal  "n012"
    t.decimal  "n013"
    t.decimal  "n014"
    t.decimal  "n015"
    t.decimal  "n016"
    t.decimal  "n017"
    t.decimal  "n018"
    t.decimal  "n019"
    t.decimal  "n020"
    t.decimal  "n021"
    t.decimal  "n022"
    t.decimal  "n023"
    t.decimal  "n024"
    t.decimal  "n025"
    t.decimal  "n026"
    t.decimal  "n027"
    t.decimal  "n028"
    t.decimal  "n029"
    t.decimal  "n030"
    t.decimal  "n031"
    t.decimal  "n032"
    t.decimal  "n033"
    t.decimal  "n034"
    t.decimal  "n035"
    t.decimal  "n036"
    t.decimal  "n037"
    t.decimal  "n038"
    t.decimal  "n039"
    t.decimal  "n040"
    t.decimal  "n041"
    t.decimal  "n042"
    t.decimal  "n043"
    t.decimal  "n044"
    t.decimal  "n045"
    t.decimal  "n046"
    t.decimal  "n047"
    t.decimal  "n048"
    t.decimal  "n049"
    t.decimal  "n050"
    t.datetime "d001"
    t.datetime "d002"
    t.datetime "d003"
    t.datetime "d004"
    t.datetime "d005"
    t.datetime "d006"
    t.datetime "d007"
    t.datetime "d008"
    t.datetime "d009"
    t.datetime "d010"
    t.datetime "d011"
    t.datetime "d012"
    t.datetime "d013"
    t.datetime "d014"
    t.datetime "d015"
    t.datetime "d016"
    t.datetime "d017"
    t.datetime "d018"
    t.datetime "d019"
    t.datetime "d020"
    t.datetime "d021"
    t.datetime "d022"
    t.datetime "d023"
    t.datetime "d024"
    t.datetime "d025"
    t.datetime "d026"
    t.datetime "d027"
    t.datetime "d028"
    t.datetime "d029"
    t.datetime "d030"
    t.datetime "d031"
    t.datetime "d032"
    t.datetime "d033"
    t.datetime "d034"
    t.datetime "d035"
    t.datetime "d036"
    t.datetime "d037"
    t.datetime "d038"
    t.datetime "d039"
    t.datetime "d040"
    t.datetime "d041"
    t.datetime "d042"
    t.datetime "d043"
    t.datetime "d044"
    t.datetime "d045"
    t.datetime "d046"
    t.datetime "d047"
    t.datetime "d048"
    t.datetime "d049"
    t.datetime "d050"
    t.text     "clob001"
    t.text     "search_clob"
  end

  add_index "apex$_ws_rows", ["ws_app_id", "data_grid_id"], name: "apex$_ws_rows_idx"

  create_table "apex$_ws_tags", force: :cascade do |t|
    t.decimal  "ws_app_id",                    null: false
    t.decimal  "data_grid_id"
    t.decimal  "row_id"
    t.decimal  "webpage_id"
    t.string   "component_level", limit: 30
    t.string   "tag",             limit: 4000
    t.datetime "created_on",                   null: false
    t.string   "created_by",                   null: false
    t.datetime "updated_on"
    t.string   "updated_by"
  end

  add_index "apex$_ws_tags", ["ws_app_id", "data_grid_id", "row_id"], name: "apex$_ws_tags_idx1"
  add_index "apex$_ws_tags", ["ws_app_id", "webpage_id"], name: "apex$_ws_tags_idx2"

  create_table "apex$_ws_webpg_section_history", id: false, force: :cascade do |t|
    t.decimal  "section_id",                        null: false
    t.decimal  "ws_app_id",                         null: false
    t.decimal  "webpage_id",                        null: false
    t.decimal  "old_display_sequence"
    t.decimal  "new_display_sequence"
    t.string   "old_title",            limit: 4000
    t.string   "new_title",            limit: 4000
    t.text     "old_content"
    t.text     "new_content"
    t.string   "application_user_id",               null: false
    t.datetime "change_date",                       null: false
  end

  add_index "apex$_ws_webpg_section_history", ["ws_app_id", "webpage_id", "section_id"], name: "apex$_ws_webpg_sechist_idx1"

  create_table "apex$_ws_webpg_sections", force: :cascade do |t|
    t.decimal  "ws_app_id",                         null: false
    t.decimal  "webpage_id"
    t.decimal  "display_sequence"
    t.string   "section_type",         limit: 30,   null: false
    t.string   "title",                limit: 4000
    t.text     "content"
    t.text     "content_upper"
    t.decimal  "nav_start_webpage_id"
    t.decimal  "nav_max_level"
    t.string   "nav_include_link",     limit: 1
    t.decimal  "data_grid_id"
    t.decimal  "report_id"
    t.decimal  "data_section_style"
    t.string   "chart_type"
    t.string   "chart_3d",             limit: 1
    t.string   "chart_label"
    t.string   "label_axis_title"
    t.string   "chart_value"
    t.string   "value_axis_title"
    t.string   "chart_aggregate"
    t.string   "chart_sorting"
    t.datetime "created_on",                        null: false
    t.string   "created_by",                        null: false
    t.datetime "updated_on"
    t.string   "updated_by"
  end

  create_table "demo_customers", primary_key: "customer_id", force: :cascade do |t|
    t.string  "cust_first_name",      limit: 20,                         null: false
    t.string  "cust_last_name",       limit: 20,                         null: false
    t.string  "cust_street_address1", limit: 60
    t.string  "cust_street_address2", limit: 60
    t.string  "cust_city",            limit: 30
    t.string  "cust_state",           limit: 2
    t.string  "cust_postal_code",     limit: 10
    t.string  "phone_number1",        limit: 25
    t.string  "phone_number2",        limit: 25
    t.decimal "credit_limit",                    precision: 9, scale: 2
    t.string  "cust_email",           limit: 30
  end

  add_index "demo_customers", ["cust_last_name", "cust_first_name"], name: "demo_cust_name_ix"

  create_table "demo_order_items", primary_key: "order_item_id", force: :cascade do |t|
    t.decimal "order_id",                                     null: false
    t.decimal "product_id",                                   null: false
    t.decimal "unit_price",           precision: 8, scale: 2, null: false
    t.integer "quantity",   limit: 8, precision: 8,           null: false
  end

  create_table "demo_orders", primary_key: "order_id", force: :cascade do |t|
    t.decimal  "customer_id",                             null: false
    t.decimal  "order_total",     precision: 8, scale: 2
    t.datetime "order_timestamp"
    t.decimal  "user_id"
  end

  add_index "demo_orders", ["customer_id"], name: "demo_ord_customer_ix"

  create_table "demo_product_info", primary_key: "product_id", force: :cascade do |t|
    t.string   "product_name",        limit: 50
    t.string   "product_description", limit: 2000
    t.string   "category",            limit: 30
    t.string   "product_avail",       limit: 1
    t.decimal  "list_price",                       precision: 8, scale: 2
    t.binary   "product_image"
    t.string   "mimetype"
    t.string   "filename",            limit: 400
    t.datetime "image_last_update"
  end

  create_table "demo_states", id: false, force: :cascade do |t|
    t.string "st",         limit: 30
    t.string "state_name", limit: 30
  end

  create_table "demo_users", primary_key: "user_id", force: :cascade do |t|
    t.string   "user_name",  limit: 100
    t.string   "password",   limit: 4000
    t.datetime "created_on"
    t.decimal  "quota"
    t.string   "products",   limit: 1
    t.datetime "expires_on"
    t.string   "admin_user", limit: 1
  end

  create_table "dept", primary_key: "deptno", force: :cascade do |t|
    t.string "dname", limit: 14
    t.string "loc",   limit: 13
  end

  create_table "emp", primary_key: "empno", force: :cascade do |t|
    t.string   "ename",    limit: 10
    t.string   "job",      limit: 9
    t.integer  "mgr",      limit: 4,  precision: 4
    t.datetime "hiredate"
    t.decimal  "sal",                 precision: 7, scale: 2
    t.decimal  "comm",                precision: 7, scale: 2
    t.integer  "deptno",   limit: 2,  precision: 2
  end

  create_table "has_implementos", force: :cascade do |t|
    t.integer  "recipe_id",     precision: 38
    t.integer  "implemento_id", precision: 38
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "has_implementos", ["implemento_id"], name: "i_has_imp_imp_id"
  add_index "has_implementos", ["recipe_id"], name: "i_has_implementos_recipe_id"

  create_table "has_ingredientes", force: :cascade do |t|
    t.integer  "recipe_id",      precision: 38
    t.integer  "ingrediente_id", precision: 38
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "has_ingredientes", ["ingrediente_id"], name: "i_has_ing_ing_id"
  add_index "has_ingredientes", ["recipe_id"], name: "i_has_ingredientes_recipe_id"

  create_table "highs", force: :cascade do |t|
    t.string   "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "implementos", force: :cascade do |t|
    t.string   "imp_nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "implementos_recipes", force: :cascade do |t|
    t.integer  "implemento_id", precision: 38
    t.integer  "recipe_id",     precision: 38
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "implementos_recipes", ["implemento_id"], name: "i_imp_rec_imp_id"
  add_index "implementos_recipes", ["recipe_id"], name: "i_imp_rec_rec_id"

  create_table "ingredientes", force: :cascade do |t|
    t.string   "ing_nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredientes_recipes", force: :cascade do |t|
    t.integer  "ingrediente_id", precision: 38
    t.integer  "recipe_id",      precision: 38
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "ingredientes_recipes", ["ingrediente_id"], name: "i_ing_rec_ing_id"
  add_index "ingredientes_recipes", ["recipe_id"], name: "i_ing_rec_rec_id"

  create_table "recipes", force: :cascade do |t|
    t.string   "titulo"
    t.string   "dificultad"
    t.string   "tiempo"
    t.string   "ingredientes"
    t.string   "implemento"
    t.string   "glosa"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.integer  "user_id",      precision: 38
    t.string   "state",                       default: "in_draft"
  end

  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                                 default: "", null: false
    t.string   "encrypted_password",                    default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          precision: 38, default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.integer  "permission_level",       precision: 38, default: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "i_users_reset_password_token", unique: true

  add_foreign_key "apex$_ws_files", "apex$_ws_rows", column: "row_id", name: "apex$_ws_files_fk", on_delete: :cascade
  add_foreign_key "apex$_ws_links", "apex$_ws_rows", column: "row_id", name: "apex$_ws_links_fk", on_delete: :cascade
  add_foreign_key "apex$_ws_notes", "apex$_ws_rows", column: "row_id", name: "apex$_ws_notes_fk", on_delete: :cascade
  add_foreign_key "apex$_ws_tags", "apex$_ws_rows", column: "row_id", name: "apex$_ws_tags_fk", on_delete: :cascade
  add_foreign_key "demo_order_items", "demo_orders", column: "order_id", primary_key: "order_id", name: "demo_order_items_fk", on_delete: :cascade
  add_foreign_key "demo_order_items", "demo_product_info", column: "product_id", primary_key: "product_id", name: "demo_order_items_product_id_fk", on_delete: :cascade
  add_foreign_key "demo_orders", "demo_customers", column: "customer_id", primary_key: "customer_id", name: "demo_orders_customer_id_fk"
  add_foreign_key "demo_orders", "demo_users", column: "user_id", primary_key: "user_id", name: "demo_orders_user_id_fk"
  add_foreign_key "emp", "dept", column: "deptno", primary_key: "deptno", name: "sys_c007186"
  add_foreign_key "emp", "emp", column: "mgr", primary_key: "empno", name: "sys_c007185"
  add_foreign_key "has_implementos", "implementos"
  add_foreign_key "has_implementos", "recipes"
  add_foreign_key "has_ingredientes", "ingredientes"
  add_foreign_key "has_ingredientes", "recipes"
  add_foreign_key "implementos_recipes", "implementos"
  add_foreign_key "implementos_recipes", "recipes"
  add_foreign_key "ingredientes_recipes", "ingredientes"
  add_foreign_key "ingredientes_recipes", "recipes"
  add_foreign_key "recipes", "users"
end
