class FilmingLocations < ActiveRecord::Migration[7.0]
  def change
    create_table "filming_locations", force: :cascade do |t|
      t.string "name"
      t.integer "country_id"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["country_id"], name: "index_filming_locations_on_country_id"
    end
  end
end
