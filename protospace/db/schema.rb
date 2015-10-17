ActiveRecord::Schema.define(version: 20151013160823) do

  create_table "prototype_photos", force: :cascade do |t|
    t.integer  "prototype_id", limit: 4
    t.string   "status",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "image",        limit: 255
  end

  create_table "prototypes", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "catchcopy",  limit: 65535
    t.text     "concept",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end
  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "username",               limit: 255
    t.string   "member",                 limit: 255
    t.text     "profile",                limit: 65535
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
