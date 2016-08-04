class ReviewsController < ApplicationController
  include ReviewsHelper
  before_action :authorize
  before_action :neediestFeedback, only: [:index, :create]

	def index
    @review = Review.new
	end

  def create
    @review = Review.new(review_params)
    @review.feedback = Feedback.find(params[:feedback_id])
    @review.reviewer = current_user
    if @review.save!
      redirect_to root_path
    else
      @errors = ["You must fill in all three fields to submit valid feedback"]
      render "/reviews/index"
    end
  end


  private
  def review_params
    params.require(:review).permit(:doable, :benevolent, :zeroed_in)
  end


end
