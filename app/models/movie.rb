class Movie < ApplicationRecord
  has_many :reviews
  has_many :tags, through: :reviews
end
