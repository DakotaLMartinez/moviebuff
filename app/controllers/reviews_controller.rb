class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  
  def index 
    @reviews = Review.all
  end

  def show 

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

  def edit 

  end

  def update 
    if @review.update(review_params)
      redirect_to reviews_path
    else 
      render :edit
    end
  end

  private 

  def set_review
    @review = Review.find_by_id(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :movie_id, tag_ids: [])
  end
end
