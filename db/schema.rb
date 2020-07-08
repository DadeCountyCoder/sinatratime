ActiveRecord::Schema.define(version: 2019_08_15_013934) do

    create_table "books", force: :cascade do |t|
      t.string "publisher"
      t.string "year"
      t.string "title"
      t.string "series"
      t.integer "user_id"
    end
  
    create_table "users", force: :cascade do |t|
      t.string "email"
      t.string "username"
      t.string "password_digest"
    end
  
  end