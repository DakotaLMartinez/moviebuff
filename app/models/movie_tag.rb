class MovieTag < ApplicationRecord
  belongs_to :movie
  belongs_to :tag
  belongs_to :review
end
