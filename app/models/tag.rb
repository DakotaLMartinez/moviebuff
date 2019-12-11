class Tag < ApplicationRecord
  has_many :movie_tags
  has_many :reviews, through: :movie_tags
end
