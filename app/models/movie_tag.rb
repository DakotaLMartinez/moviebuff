class MovieTag < ApplicationRecord
  belongs_to :tag
  belongs_to :review

  def movie 
    review.movie
  end
end
