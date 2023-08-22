class Reviews < ActiveRecord::Migration[7.0]
  def change
    create_table "reviews", force: :cascade do |t|
      t.integer "user_id"
      t.integer "stars"
      t.text "review"
      t.integer "movie_id", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["movie_id"], name: "index_reviews_on_movie_id"
    end
  end
end
