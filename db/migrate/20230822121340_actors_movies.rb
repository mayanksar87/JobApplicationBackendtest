class ActorsMovies < ActiveRecord::Migration[7.0]
  def change
    create_table "actors_movies", id: false, force: :cascade do |t|
      t.integer "movie_id", null: false
      t.integer "actor_id", null: false
    end
  end
end
