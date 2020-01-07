module ReviewsHelper
  def list_view_for_review(review, options={})
    options[:show_movie_title] ||= false
    render partial: "reviews/review", locals: { review: review, options: options }
  end
end
