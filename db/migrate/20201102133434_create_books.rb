class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :publisher
      t.string :year
      t.string :title
      t.string :series
      t.integer :user_id
    end
  end
end
