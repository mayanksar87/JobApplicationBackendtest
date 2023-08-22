class Movies < ActiveRecord::Migration[7.0]
  def change
    create_table "movies", force: :cascade do |t|
      t.string "name"
      t.text "description"
      t.integer "year"
      t.string "director"
      t.integer "country_id"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  end
end
