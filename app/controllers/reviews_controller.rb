class ReviewsController < ApplicationController
  def index 
    @reviews = Review.all
  end

  def new 
    @review = Review.new
  end

  def create 
    @review = current_user.reviews.build(review_params)
    if @review.save 
      redirect_to reviews_path
    else 
      render :new
    end
  end

  private 

  def review_params
    params.require(:review).permit(:title, :content, :movie_id, tag_ids: [])
  end
end
