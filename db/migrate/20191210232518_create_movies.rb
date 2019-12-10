class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :overview
      t.string :original_language
      t.string :release_date
      t.float :vote_average
      t.string :poster_path
      t.string :backdrop_path

      t.timestamps
    end
  end
end
