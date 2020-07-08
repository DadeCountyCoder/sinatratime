ActiveRecord::Schema.define(version: 2019_08_15_013934) do

    create_table "digimons", force: :cascade do |t|
      t.string "name"
      t.string "nickname"
      t.string "type"
      t.integer "trainer_id"
    end
  
    create_table "users", force: :cascade do |t|
      t.string "email"
      t.string "trainer_name"
      t.string "password_digest"
    end
  
  end