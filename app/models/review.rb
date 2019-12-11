class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_many :movie_tags
  has_many :tags, through: :movie_tags
end
