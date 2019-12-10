json.extract! movie, :id, :title, :overview, :original_language, :release_date, :vote_average, :poster_path, :backdrop_path, :created_at, :updated_at
json.url movie_url(movie, format: :json)
